class Vendor::ProductsController < Admin::ProductsController 

  def collection #Redefinimos para aplicar filtro de vendor...
    return @collection if @collection.present?
    unless request.xhr?
      if params[:search].nil? #Verificamos el filtro de vendor para los productos...
        params[:search] = {'vendor_id_eq' => session[:vendor_id]}
      else
        params[:search].merge!({'vendor_id_eq' => session[:vendor_id]})
      end
      params[:search] ||= {}
      # Note: the MetaSearch scopes are on/off switches, so we need to select "not_deleted" explicitly if the switch is off
      if params[:search][:deleted_at_is_null].nil?
        params[:search][:deleted_at_is_null] = "1"
      end

      params[:search][:meta_sort] ||= "name.asc"
      @search = super.metasearch(params[:search])

      @collection = @search.relation.group_by_products_id.includes({:variants => [:images, :option_values]}).page(params[:page]).per(Spree::Config[:admin_products_per_page])
    else #TODO: hace falta acá???
      includes = [{:variants => [:images,  {:option_values => :option_type}]}, :master, :images]

      @collection = super.where(["name #{LIKE} ?", "%#{params[:q]}%"])
      @collection = @collection.includes(includes).limit(params[:limit] || 10)

      tmp = super.where(["variants.sku #{LIKE} ?", "%#{params[:q]}%"])
      tmp = tmp.includes(:variants_including_master).limit(params[:limit] || 10)
      @collection.concat(tmp)

      @collection.uniq
    end

  end

  def create #Redefinimos para asignar vendor_id...
    invoke_callbacks(:create, :before)
    @object.vendor_id = params[:vendor_id] #Actualizamos el vendor del producto...
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
    @object.vendor_id = params[:vendor_id] #Actualizamos el vendor del producto...
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

  def location_after_save
    if current_user.has_role?('vendor') then
      edit_vendor_product_url(@product)
    else 
      edit_admin_product_url(@product)
    end
  end

end
