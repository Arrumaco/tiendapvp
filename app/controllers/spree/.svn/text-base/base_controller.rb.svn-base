class Spree::BaseController < ActionController::Base
  include SpreeBase
  include SpreeRespondWith

  
  #Extendemos ability para que conozca el request...
  def current_ability
    @current_ability ||= Ability.new(current_user,request)
  end

  #Verificamos si está loggeado el usuario para pedirle login... Nunca en index.
  def verify_login 
    authenticate_user!
  end
  
end
