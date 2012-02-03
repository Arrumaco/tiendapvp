LineItem.class_eval do

private
    def update_inventory
      # return true unless self.order.completed?  Ajustado para incluir la actualizacion cantidad_original...
      if !self.order.completed?
	  
        self.cantidad_original = self.quantity # Actualizamos la Cantidad Original...
		
        return true
      end

      if self.new_record?
        InventoryUnit.increase(self.order, self.variant, self.quantity)
      elsif old_quantity = self.changed_attributes["quantity"]
        if old_quantity < self.quantity
          InventoryUnit.increase(self.order, self.variant, (self.quantity - old_quantity))
        elsif old_quantity > self.quantity
          InventoryUnit.decrease(self.order, self.variant, (old_quantity - self.quantity))
        end
      end

    end

end
