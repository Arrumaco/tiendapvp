Deface::Override.new(:virtual_path => "orders/show",
                     :name => "orders_1", 
                     :replace_contents => "code[erb-loud]:contains('link_to t(:back_to_store), root_path')",
                     :text => "link_to t(:back_to_store), '/products'",
                     :disabled => false)