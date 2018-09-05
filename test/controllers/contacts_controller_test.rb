require 'test_helper'
require 'pry'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
    assert_template :index
    assert_not_nil assigns(:contacts)
  end

end
