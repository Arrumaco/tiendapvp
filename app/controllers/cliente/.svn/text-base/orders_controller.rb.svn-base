class Cliente::OrdersController < Admin::OrdersController 

  def index
    if params[:search].nil? #Verificamos el filtro de cliente para los usuarios...
        params[:search] = {'cliente_id_eq' => session[:cliente_id]}
    else
      params[:search].merge!({'cliente_id_eq' => session[:cliente_id]})
    end
    #params[:search] ||= {}
    params[:search][:completed_at_is_not_null] ||= '1' if Spree::Config[:show_only_complete_orders_by_default]
    @show_only_completed = params[:search][:completed_at_is_not_null].present?
    params[:search][:meta_sort] ||= @show_only_completed ? 'completed_at.desc' : 'created_at.desc'

    @search = Order.metasearch(params[:search])

    if !params[:search][:created_at_greater_than].blank?
      params[:search][:created_at_greater_than] = Time.zone.parse(params[:search][:created_at_greater_than]).beginning_of_day rescue ""
    end

    if !params[:search][:created_at_less_than].blank?
      params[:search][:created_at_less_than] = Time.zone.parse(params[:search][:created_at_less_than]).end_of_day rescue ""
    end

    if @show_only_completed
      params[:search][:completed_at_greater_than] = params[:search].delete(:created_at_greater_than)
      params[:search][:completed_at_less_than] = params[:search].delete(:created_at_less_than)
    end

    @orders = Order.metasearch(params[:search]).includes([:user, :shipments, :payments]).page(params[:page]).per(Spree::Config[:orders_per_page])
    respond_with(@orders)
  end

end
