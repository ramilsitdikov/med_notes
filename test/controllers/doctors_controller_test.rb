require 'test_helper'
class DoctorsControllerTest < ActionController::TestCase
  setup do
  end

  test 'should make workflow for doctor' do
    post :create, { format: :json, name: "Name", surname: "Surname", email: "test@mail.com", phone: "+79834986434",
                    password: "password" }
    assert_response :created
    doctor_id = response_json[:data][:id]

    post :create, { format: :json, name: "Name", surname: "Surname", email: "test@mail.com", phone: "+79834986434" }
    assert_response :unprocessable_entity


    get :show, { format: :json, id: doctor_id }
    assert_response :success
  end
end
