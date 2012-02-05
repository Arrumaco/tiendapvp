class CrearIndicesParaPostgres < ActiveRecord::Migration
  def up
    add_index "configurations", ["name", "type"], :name => "index_configurations_on_name_and_type"
    add_index "line_items", ["order_id"], :name => "index_line_items_on_order_id"
    add_index "line_items", ["variant_id"], :name => "index_line_items_on_variant_id"
    add_index "option_values_variants", ["variant_id"], :name => "index_option_values_variants_on_variant_id"
    add_index "orders", ["number"], :name => "index_orders_on_number"
    #  add_index "preferences", ["owner_id", "owner_type", "attribute", "group_id", "group_type"], :name => "index_preferences_on_owner_and_attribute_and_preference", :unique => true
    add_index "products", ["available_on"], :name => "index_products_on_available_on"
    add_index "products", ["deleted_at"], :name => "index_products_on_deleted_at"
    add_index "products", ["name"], :name => "index_products_on_name"
    add_index "products", ["permalink"], :name => "index_products_on_permalink"
    add_index "products_taxons", ["product_id"], :name => "index_products_taxons_on_product_id"
    add_index "products_taxons", ["taxon_id"], :name => "index_products_taxons_on_taxon_id"
    add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
    add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"
    add_index "variants", ["product_id"], :name => "index_variants_on_product_id"
    add_index(:inventory_units, :variant_id)
    add_index(:inventory_units, :order_id)
    add_index :product_groups, :name
    add_index :product_groups, :permalink
    add_index :product_scopes, :name
    add_index :product_scopes, :product_group_id
    #  add_index :users, :openid_identifier
    add_index(:taxons, :permalink)
    add_index(:taxons, :parent_id)
    add_index(:taxons, :taxonomy_id)
    add_index(:assets, :viewable_id)
    add_index(:assets, [:viewable_type, :type])
    add_index(:product_properties, :product_id)
    add_index(:option_values_variants, [:variant_id, :option_value_id])
    add_index(:inventory_units, :shipment_id)
    add_index(:adjustments, :order_id)
    add_index :addresses, :firstname
    add_index :addresses, :lastname
    add_index :checkouts, :order_id
    add_index :checkouts, :bill_address_id
    add_index :shipments, :number
    add_index :users, :persistence_token
    add_index "preferences", ["owner_id", "owner_type", "name", "group_id", "group_type"], :name => "ix_prefs_on_owner_attr_pref", :unique => true
    add_index "tokenized_permissions", ["permissable_id", "permissable_type"], :name => "index_tokenized_name_and_type"
    add_index :promotion_rules, :product_group_id
    add_index :promotion_rules, :user_id
    add_index :products_promotion_rules, :product_id
    add_index :products_promotion_rules, :promotion_rule_id
    add_index :promotion_rules_users, :user_id
    add_index :promotion_rules_users, :promotion_rule_id
  end

  def down
  end
end
