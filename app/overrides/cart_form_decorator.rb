Deface::Override.new(:virtual_path => "products/_cart_form",
                     :name => "cart_form",
                     :insert_bottom => "[data-hook='inside_product_cart_form'], #inside_product_cart_form[data-hook]",
                     :text => "<%= link_to t(:return_to_store), products_path, :class => 'continue' %>",
                     :disabled => false)