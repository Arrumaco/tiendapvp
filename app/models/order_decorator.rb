Order.class_eval do

  before_create :asigna_cliente

  def asigna_cliente
    self.cliente_id = User.find(self.user_id).cliente_id
  end

  def update_adjustments
    self.adjustments.reload.each do |adj|
      adj.update!
    end
  end

  # Finalizes an in progress order after checkout is complete.
  # Called after transition to complete state when payments will have been processed
  def finalize!
    update_attribute(:completed_at, Time.now)
    InventoryUnit.assign_opening_inventory(self)
    # lock any optional adjustments (coupon promotions, etc.)
    adjustments.optional.each { |adjustment| adjustment.update_attribute("locked", true) }
	
    envia_correos_notific # Envío de correos...

    self.state_events.create({
      :previous_state => "cart",
      :next_state     => "complete",
      :name           => "order" ,
      :user_id        => (User.respond_to?(:current) && User.current.try(:id)) || self.user_id
    })
  end

  def envia_correos_notific
    OrderMailer.notific_usuario_email(self).deliver
     a = {} #Hash con una entrada por proveedor.  Cada elemento del hash es un arreglo de line_items...
    self.line_items.each do |linea|
      variante = Variant.find(linea.variant_id)
      producto = Product.find(variante.product_id)
      if !a.key?(producto.vendor_id)
        a[producto.vendor_id] = []
      end
      a[producto.vendor_id] << linea
    end
    a.each do |vendor,lineas|
      vendor1 = Vendor.find(vendor)
      OrderMailer.notific_vendor_email(self, lineas, vendor1).deliver #Mandamos correos a los vendors...
    end
  end

end
