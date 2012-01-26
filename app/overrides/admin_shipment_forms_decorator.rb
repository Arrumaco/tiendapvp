Deface::Override.new(:virtual_path => "admin/shipments/_form",
                     :name => "admin_shipments_forms1", 
                     :replace => "[data-hook='admin_shipment_form_inventory_units']",
                     :partial => "../views/admin/shipments/shipment_row",
                     :disabled => false)
