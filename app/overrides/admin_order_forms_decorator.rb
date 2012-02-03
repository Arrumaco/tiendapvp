Deface::Override.new(:virtual_path => "admin/orders/index",
                     :name => "admin_orders_forms1", 
                     :replace => "code[erb-loud]:contains('button_link_to t(:new_order),')",
                     :partial => "../views/cliente/shared/pedido_index_nuevo",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/orders/index",
                     :name => "admin_orders_forms2", 
                     :replace => "[data-hook='admin_orders_index_rows']",
                     :partial => "../views/cliente/shared/pedido_index_lista",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/orders/show",
                     :name => "admin_orders_forms3", 
                     :replace => "[data-hook='admin_order_show_buttons']",
                     :partial => "../views/cliente/shared/pedido_show_botones",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/orders/edit",
                     :name => "admin_orders_forms4", 
                     :replace => "code[erb-loud]:contains('button_link_to t(:resend),')",
                     :partial => "../views/cliente/shared/pedido_edit_resend",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/orders/_add_product",
                     :name => "admin_orders_forms5", 
                     :replace => "[data-hook='add_button']",
                     :partial => "../views/cliente/shared/pedido_edit_add_item",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/orders/_form",
                     :name => "admin_orders_forms6", 
                     :replace => "code[erb-loud]:contains('form_for @order, :url => admin_order_url(@order), ')",
                     :partial => "../views/cliente/shared/pedido_edit_submit",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/orders/_form",
                     :name => "admin_orders_forms7", 
                     :replace => "[data-hook='admin_order_form_buttons']",
                     :partial => "../views/cliente/shared/pedido_edit_cancelar",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/orders/index",
                     :name => "admin_orders_forms8", 
                     :replace => "code[erb-loud]:contains('form_for [:admin, @search] do |f| ')",
                     :text => "<%= form_for [session[:rol_usuario], @search]  do |f| %> ",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/shared/_order_tabs",
                     :name => "admin_orders_forms9", 
                     :replace => "[data-hook='admin_order_tabs']",
                     :partial => "../views/cliente/shared/pedido_detalle",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/orders/_line_item",
                     :name => "admin_orders_forms10", 
                     :replace => "[data-hook='admin_order_form_line_item_row']",
                     :partial => "../views/admin/orders/order_line_item",
                     :disabled => false)					 
