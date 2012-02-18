TiendaPVP::Application.routes.draw do

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)
 
  match 'deposito_bancos/:id/registro_deposito' => 'deposito_bancos#registro_deposito', :as => 'registro_deposito'
  match 'deposito_bancos/:id/actualiza_deposito' => 'deposito_bancos#actualiza_deposito', :as => 'actualiza_deposito'
  
  devise_scope :user do 
    match 'registro_correo/:id/confirma_usuario' => 'registro_correo#confirma_usuario', :as => 'confirma_usuario'
    match 'registro_correo/:id/confirma_usuario_2' => 'registro_correo#confirma_usuario_2', :as => 'confirma_usuario_2'
    
    match 'registro_correo/:id/*email/registra_usuario' => 'registro_correo#registra_usuario', :as => 'registra_usuario'
    match 'registro_correo/:id/*email/registra_usuario_2' => 'registro_correo#registra_usuario_2', :as => 'registra_usuario_2' 
  end 

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  resources :clientes
  resources :vendors
  resources :payments do
    member do
      get :registro_deposito
    end
  end

  namespace "admin" do
    resources :clientes
    resources :vendors
  end
  

  namespace :cliente do

    resources :clientes
    resources :vendors #TODO: Esto no puede ser!!!!

    resources :zones
    resources :users
    resources :countries do
      resources :states
    end
    resources :states
    resources :tax_categories
    resources :configurations, :only => :index
    resources :products do
      resources :product_properties
      resources :images do
        collection do
          post :update_positions
        end
      end
      member do
        get :clone
      end
      resources :variants do
        collection do
          post :update_positions
        end
      end
      resources :option_types do
        member do
          get :select
          get :remove
        end
        collection do
          get :available
          get :selected
        end
      end
      resources :taxons do
        member do
          get :select
          delete :remove
        end
        collection do
          post :available
          post :batch_select
          get  :selected
        end
      end
    end
    resources :option_types do
      collection do
        post :update_positions
      end
    end

    resources :properties do
      collection do
        get :filtered
      end
    end

    resources :prototypes do
      member do
        get :select
      end

      collection do
        get :available
      end
    end

    resource :inventory_settings
    resources :google_analytics

    resources :orders do
      member do
        put :fire
        get :fire
        post :resend
        get :history
        get :user
      end

      resources :adjustments
      resources :line_items
      resources :shipments do
        member do
          put :fire
        end
      end
      resources :return_authorizations do
        member do
          put :fire
        end
      end
      resources :payments do
        member do
          put :fire
        end
      end
    end

    resource :general_settings do
      collection do
        post :dismiss_alert
      end
    end

    resources :taxonomies do
      member do
        get :get_children
      end

      resources :taxons
    end

    resources :reports, :only => [:index, :show] do
      collection do
        get :sales_total
      end
    end

    resources :shipments
    resources :shipping_methods
    resources :shipping_categories
    resources :tax_rates
    resource  :tax_settings
    resources :calculators
    resources :product_groups do
      resources :product_scopes
    end


    resources :trackers
    resources :payment_methods
    resources :mail_methods do
      member do
        post :testmail
      end
    end

    #SPREE-PROMO!!!!!
    resources :promotions do
      resources :promotion_rules
      resources :promotion_actions
    end

  end
  
  namespace :vendor do

    resources :clientes
    resources :vendors #TODO: Esto no puede ser!!!!

    resources :zones
    resources :users
    resources :countries do
      resources :states
    end
    resources :states
    resources :tax_categories
    resources :configurations, :only => :index
    resources :products do
      resources :product_properties
      resources :images do
        collection do
          post :update_positions
        end
      end
      member do
        get :clone
      end
      resources :variants do
        collection do
          post :update_positions
        end
      end
      resources :option_types do
        member do
          get :select
          get :remove
        end
        collection do
          get :available
          get :selected
        end
      end
      resources :taxons do
        member do
          get :select
          delete :remove
        end
        collection do
          post :available
          post :batch_select
          get  :selected
        end
      end
    end
    resources :option_types do
      collection do
        post :update_positions
      end
    end

    resources :properties do
      collection do
        get :filtered
      end
    end

    resources :prototypes do
      member do
        get :select
      end

      collection do
        get :available
      end
    end

    resource :inventory_settings
    resources :google_analytics

    resources :orders do
      member do
        put :fire
        get :fire
        post :resend
        get :history
        get :user
      end

      resources :adjustments
      resources :line_items
      resources :shipments do
        member do
          put :fire
        end
      end
      resources :return_authorizations do
        member do
          put :fire
        end
      end
      resources :payments do
        member do
          put :fire
        end
      end
    end

    resource :general_settings do
      collection do
        post :dismiss_alert
      end
    end

    resources :taxonomies do
      member do
        get :get_children
      end

      resources :taxons
    end

    resources :reports, :only => [:index, :show] do
      collection do
        get :sales_total
      end
    end

    resources :shipments
    resources :shipping_methods
    resources :shipping_categories
    resources :tax_rates
    resource  :tax_settings
    resources :calculators
    resources :product_groups do
      resources :product_scopes
    end


    resources :trackers
    resources :payment_methods
    resources :mail_methods do
      member do
        post :testmail
      end
    end

    #SPREE-PROMO!!!!!
    resources :promotions do
      resources :promotion_rules
      resources :promotion_actions
    end

  end

  match '/cliente' => 'cliente/overview#index', :as => :cliente
  match '/vendor' => 'vendor/overview#index', :as => :vendor

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
