Product.class_eval do
	attr_protected :vendor_id, :as => :admin
  #, :name, :sku, :prototype_id, :price, :available_on,
  #  :permalink, :description, :cost_price, :on_hand, :weight, :height, :width, :depth, :shipping_category_id,
  #  :tax_category_id, :meta_keywords, :meta_description
end
