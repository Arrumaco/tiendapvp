class DepositoBancosController < ApplicationController
 
  def registro_deposito
    arr_buff = params[:id].split('R') 
    @order = Order.where(:id =>arr_buff[0], :number => "R#{arr_buff[1]}").all
    @deposito_banco = Payment.where(:order_id => arr_buff[0]).all

    respond_to do |format|
      if !@order.empty? && !@deposito_banco.empty?
        format.html 
        format.json { render json: @deposito_banco }
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
