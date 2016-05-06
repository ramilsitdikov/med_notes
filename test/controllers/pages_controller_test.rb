require 'test_helper'
class PagesControllerTest < ActionController::TestCase
  setup do
  end

  test 'should return nothing' do
    get :main, { format: :json }
    assert_response :success
  end
end
