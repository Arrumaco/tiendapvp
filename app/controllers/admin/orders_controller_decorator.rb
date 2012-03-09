Admin::OrdersController.class_eval do  

  def update
    return_path = nil
    params[:order][:line_items_attributes].each do |key, item| #Procesamos cada line_items de la orden...
      item[:fecha_despacho_confirmado] = Date.today
      linea = LineItem.new()
      #linea.id = item[:id].to_i
      #linea.despacho_confirmado = item[:despacho_confirmado].to_i
      #linea.fecha_despacho_confirmado = Date.today

      linea.update_attributes(item)
    end
    load_order
    if @order.update_attributes(params[:order]) && @order.line_items.present?
      unless @order.complete?
        if params[:order].key?(:email)
          shipping_method = @order.available_shipping_methods(:front_end).first
          if shipping_method
            @order.shipping_method = shipping_method

            if params[:guest_checkout] == 'false' && params[:user_id].present?
              @order.user_id = params[:user_id]
              @order.user true
            end
            @order.save
            @order.create_shipment!
            return_path = edit_admin_order_shipment_path(@order, @order.shipment)
          else
            flash[:error] = t('errors.messages.no_shipping_methods_available')
            return_path = user_admin_order_path(@order)
          end
        else
          return_path = user_admin_order_path(@order)
        end

      else
        return_path = admin_order_path(@order)
      end
    else
      @order.errors.add(:line_items, t('errors.messages.blank'))
    end

    respond_with(@order) do |format|
      format.html do
        if return_path
          #redirect_to return_path  Nos quedamos en la misma forma para poder enviar correos...
          flash.notice = t('order_updated')
          redirect_to :back
        else
          render :action => :edit
        end
      end
    end
  end

  def resend
    if !params[:usuario_mensaje_notificacion].nil?
      OrderMailer.notific_usuario_email(@order, true).deliver
      flash.notice = t('order_email_resent')
    end
    if !params[:usuario_mensaje_confirmacion].nil?
      OrderMailer.confirm_usuario_email(@order, true).deliver
      flash.notice = t('order_email_resent')
    end

    a = {} #Hash con una entrada por proveedor.  Cada elemento del hash es un arreglo de line_items...
    @order.line_items.each do |linea|
      variante = Variant.find(linea.variant_id)
      producto = Product.find(variante.product_id)
      if !a.key?(producto.vendor_id)
        a[producto.vendor_id] = []
      end
      a[producto.vendor_id] << linea
    end
    a.each do |vendor,lineas| #Mandamos correos a los vendors...
      vendor1 = Vendor.find(vendor)

      if !params[:vendor_mensaje_notificacion].nil?
        OrderMailer.notific_vendor_email(@order, lineas, vendor1, true).deliver
        flash.notice = t('order_email_resent')
      end
      if !params[:vendor_mensaje_confirmacion].nil?
        OrderMailer.confirm_vendor_email(@order, lineas, vendor1, true).deliver
        flash.notice = t('order_email_resent')
      end
    end

    respond_with(@order) { |format| format.html { redirect_to :back } }
  end

end
