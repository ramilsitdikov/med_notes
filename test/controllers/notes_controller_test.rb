require 'test_helper'
class NotesControllerTest < ActionController::TestCase
  setup do
  end

  test 'should make workflow for note' do
    post :create, {format: :json, symptoms: "symptoms", diagnosis: "diagnosis", conclusion: "conclusion", assigning: "assigning" }
    assert_response :created
    note_id = response_json[:data][:id]

    post :create, {format: :json, diagnosis: "diagnosis", conclusion: "conclusion", assigning: "assigning" }
    assert_response :unprocessable_entity

    get :show, { format: :json, id: note_id }
    assert_response :success
  end
end
