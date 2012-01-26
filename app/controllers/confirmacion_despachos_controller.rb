class ConfirmacionDespachosController < ApplicationController

  def registro_despacho
    arr_buff = params[:id].split('V') 
    @order_lines = LineItem.where(:order_id =>arr_buff[0], :variant_id => "#{arr_buff[1]}").all

    respond_to do |format|
      if !@order_lines.empty? 
        format.html 
        format.json { render json: @order_lines }
      else
       format.html { render :file => "../../public/404.html", :status => 404, :layout => false}
      end
    end
  end

  def actualiza_deposito
    params[:id] = params[:payment][:id]
    @deposito_banco = Payment.find(params[:payment][:id])
    respond_to do |format|
      if @deposito_banco.update_attributes(params[:payment])
        format.html
      else
        flash[:notice] = 'Opss...  Ha ocurrido un error.' 
        format.html { render action: "registro_deposito" }
      end
    end
  end


end
