ProductsController.class_eval do
  include SpreeBase
#  load_and_authorize_resource

  before_filter :verify_login
end
