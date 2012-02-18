class RegistroCorreoController < UserRegistrationsController

  def confirma_usuario
    arr_buff = params[:id].split('C') 
    @cliente = Cliente.where(:id =>arr_buff[0], :user_id => arr_buff[1]).all.first

    respond_to do |format|
      if @cliente 
        format.html 
        format.json { render json: @cliente }
      else
       format.html { render :file => "../../public/404.html", :status => 404, :layout => false}
      end
    end
  end

  def confirma_usuario_2
    arr_buff = params[:id].split('C') 
    @cliente = Cliente.where(:id =>arr_buff[0], :user_id => arr_buff[1]).all.first

    respond_to do |format|
      if @cliente 
        OrderMailer.confirmacion_registro_usuario_email(@cliente, params[:email]).deliver
        format.html 
      else
       format.html { render :file => "../../public/404.html", :status => 404, :layout => false}
      end
    end
  end

  def registra_usuario
    arr_buff = params[:id].split('C') 
    @cliente = Cliente.where(:id =>arr_buff[0], :user_id => arr_buff[1]).all.first
    @user = User.new
    @user.email = params[:email]
    @user.login = params[:email]
    @user.cliente_id = arr_buff[0]

    respond_to do |format|
      if @cliente 
        format.html 
      else
       format.html { render :file => "../../public/404.html", :status => 404, :layout => false}
      end
    end
  end

  def registra_usuario_2
    arr_buff = params[:id].split('C') 
    @cliente = Cliente.where(:id =>arr_buff[0], :user_id => arr_buff[1]).all.first
    @user = User.new(params[:user])
    @user.login = @user.email
    @user.cliente_id = arr_buff[0]
 
    respond_to do |format|
      if @cliente 
        if @user.save 
          flash[:notice] = "Cuenta #{@user.email} creada exitosamente!!!  Por favor, inicie sesion para poder comprar..."
          format.html { redirect_to  :controller => 'welcome', :action => 'index', :status => 302 }
        else
          format.html { render  action: "registra_usuario", :id => params[:id], :email => @user.email }  
        end
      else
        format.html { render :file => "../../public/404.html", :status => 404, :layout => false}
      end
    end
  end

end

