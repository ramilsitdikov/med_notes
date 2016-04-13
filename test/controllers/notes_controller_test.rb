require 'test_helper'
class NotesControllerTest < ActionController::TestCase
  setup do
  end

  test 'should make workflow for note' do
    post :create, { format: :json, symptoms: "symptoms", diagnosis: "diagnosis", conclusion: "conclusion", assigning: "assigning" }
    assert_response :created

    post :create, { format: :json, diagnosis: "diagnosis", conclusion: "conclusion", assigning: "assigning" }
    assert_response :unprocessable_entity

    get :index, { format: :json }
    assert_response :success
  end
end
