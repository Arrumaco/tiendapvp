require 'test_helper'

class DepositoBancosControllerTest < ActionController::TestCase
  test "should get registro_deposito" do
    get :registro_deposito
    assert_response :success
  end

end
