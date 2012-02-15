Deface::Override.new(:virtual_path => "taxons/show",
                     :name => "products_no_filter", 
                     :remove => "code[erb-loud]:contains('shared/filters')",
                     :disabled => false)                    