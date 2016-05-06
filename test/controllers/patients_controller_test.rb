require 'test_helper'
class PatientsControllerTest < ActionController::TestCase
  setup do
  end

  test 'should make workflow for patient' do
    post :create, { format: :json, name: "Name", surname: "Surname", email: "test@mail.com", phone: "+79834986434",
                 sex: "m", birthday: Date.today, inn: "212392748777", coi: "4234234423",
                 password: "password" }
    assert_response :created
    patient_id = response_json[:data][:id]

    post :create, { format: :json, name: "Name", surname: "Surname", email: "test@mail.com", phone: "+79834986434",
                 coi: "4234234423", password: "password" }
    assert_response :unprocessable_entity

    get :show, { format: :json, id: patient_id }
    assert_response :success

    get :get_by_inn, { format: :json, inn: "212392748777" }
    assert_response :success
  end
end
