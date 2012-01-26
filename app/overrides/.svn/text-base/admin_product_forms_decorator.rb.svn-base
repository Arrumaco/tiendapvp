Deface::Override.new(:virtual_path => "admin/products/new",
                     :name => "admin_products_forms1", 
                     :replace => "[data-hook='new_product_attrs']",
                     :partial => "../views/shared/product_new",
                     :disabled => false) #Esto realmente no funciona.  Documenta que admin/products/new existe...
Deface::Override.new(:virtual_path => "admin/products/_form",
                     :name => "admin_products_forms2", 
                     :replace => "[data-hook='admin_product_form_left']",
                     :partial => "../views/shared/product_edit",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/products/edit",
                     :name => "admin_products_forms3", 
                     :replace => "code[erb-loud]:contains('form_for [:admin, @product],')",
                     :text => "<%= form_for [session[:rol_usuario], @product], :html => { :method => :put, :multipart => true } do |f| %> ",
                     :disabled => false)
