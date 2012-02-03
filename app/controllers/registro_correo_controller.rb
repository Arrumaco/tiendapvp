class RegistroCorreoController < ApplicationController

  def confirma_usuario
    arr_buff = params[:id].split('C') 
    @cliente = Cliente.where(:id =>arr_buff[0], :user_id => arr_buff[1]).all

    respond_to do |format|
      if !@cliente.empty? 
        format.html 
        format.json { render json: @cliente }
      else
       format.html { render :file => "../../public/404.html", :status => 404, :layout => false}
      end
    end
  end

  def confirma_usuario_2
    arr_buff = params[:id].split('C') 
    @cliente = Cliente.where(:id =>arr_buff[0], :user_id => arr_buff[1]).all

    respond_to do |format|
      if !@cliente.empty? 
        OrderMailer.confirmacion_registro_usuario_email(@cliente, params[:email]).deliver
      else
       format.html { render :file => "../../public/404.html", :status => 404, :layout => false}
      end
    end
  end
end
