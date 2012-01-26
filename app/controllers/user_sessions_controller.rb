class UserSessionsController < Devise::SessionsController
  include SpreeBase
  helper :users, 'spree/base'

  include Spree::CurrentOrder

  after_filter :associate_user, :only => :create

  ssl_required :new, :create, :destroy, :update
  ssl_allowed :login_bar

  # GET /resource/sign_in
  def new
    super
  end

  def create
    authenticate_user!

    if user_signed_in?

       #Seteo del rol para verificar permisos...
      session[:cliente_id] = nil #El cliente lo necesitamos para el portal clientes...
      session[:vendor_id] = nil #El vendor lo necesitamos para el portal vendors...
      if current_user.has_role?('admin') then
        session[:rol_usuario] = 'admin'
      elsif current_user.has_role?('cliente') then
        session[:cliente_id] = current_user.cliente_id
        session[:rol_usuario] = 'cliente' 
      elsif current_user.has_role?('vendor') then
        session[:vendor_id] = current_user.vendor_id
        session[:rol_usuario] = 'vendor'
      else 
        session[:rol_usuario] = 'user'
      end
		
      respond_to do |format|
        format.html {
          flash[:notice] = I18n.t("logged_in_succesfully")
          redirect_back_or_default(products_path)
        }
        format.js {
          user = resource.record
          render :json => {:ship_address => user.ship_address, :bill_address => user.bill_address}.to_json
        }
      end
    else
      flash[:error] = I18n.t("devise.failure.invalid")
      render :new
    end
  end

  def destroy
    #blanqueo del rol para verificar permisos...
    session[:rol_usuario] = nil
    session[:cliente_id] = nil
    session[:vendor_id] = nil 

    session.clear
    super
  end

  def nav_bar
    render :partial => "shared/nav_bar"
  end

  private

  def associate_user
    return unless current_user and current_order
    current_order.associate_user!(current_user)
    session[:guest_token] = nil
  end

  def accurate_title
    I18n.t(:log_in)
  end

end
