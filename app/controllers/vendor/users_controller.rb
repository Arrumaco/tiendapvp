class Vendor::UsersController < Admin::UsersController 

  def collection #Redefinimos para aplicar filtro de vendor...
    return @collection if @collection.present?
    unless request.xhr?
      if params[:search].nil? #Verificamos el filtro de vendor para los usuarios...
        params[:search] = {'vendor_id_eq' => session[:vendor_id]}
      else
        params[:search].merge!({'vendor_id_eq' => session[:vendor_id]})
      end
      params[:search] ||= {}
      @search = User.registered.metasearch(params[:search])
      @collection = @search.relation.page(params[:page]).per(Spree::Config[:admin_products_per_page])
    else #TODO: hace falta acá???
      #disabling proper nested include here due to rails 3.1 bug
      #@collection = User.includes(:bill_address => [:state, :country], :ship_address => [:state, :country]).
      @collection = User.includes(:bill_address, :ship_address).
                        where("users.email #{LIKE} :search
                               OR addresses.firstname #{LIKE} :search
                               OR addresses.lastname #{LIKE} :search
                               OR ship_addresses_users.firstname #{LIKE} :search
                               OR ship_addresses_users.lastname #{LIKE} :search",
                               {:search => "#{params[:q].strip}%"}).
                        limit(params[:limit] || 100)
    end
  end

  def create #Redefinimos para asignar vendor_id...
    invoke_callbacks(:create, :before)
    @object.vendor_id = params[:vendor_id] #Actualizamos el vendor del usuario...
    if @object.save
      invoke_callbacks(:create, :after)
      flash[:notice] = flash_message_for(@object, :successfully_created)
      respond_with(@object) do |format|
        format.html { redirect_to location_after_save }
        format.js   { render :layout => false }
      end
    else
      invoke_callbacks(:create, :fails)
      respond_with(@object)
    end
  end

  def update #Redefinimos para asignar vendor_id...
    invoke_callbacks(:update, :before)
    @object.vendor_id = params[:vendor_id] #Actualizamos el vendor del usuario...
    if @object.update_attributes(params[object_name])
      invoke_callbacks(:update, :after)
      flash[:notice] = flash_message_for(@object, :successfully_updated)
      respond_with(@object) do |format|
        format.html { redirect_to location_after_save }
        format.js   { render :layout => false }
      end
    else
      invoke_callbacks(:update, :fails)
      respond_with(@object)
    end
  end

end
