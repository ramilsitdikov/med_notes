require 'test_helper'

class PatientTest < ActiveSupport::TestCase

  test 'should create' do
    patient = Patient.new
    assert_not patient.save

    patient = Patient.new(name: "Name", surname: "Surname", email: "test@mail.com", phone: "+79834986434",
                          sex: "m", birthday: Date.today, inn: "212392748777",
                          certificate_of_insurance: "4234234423", password: "password")
    assert patient.save
  end

  test 'should get access' do
    patient = Patient.create!(name: "Name", surname: "Surname", email: "test@mail.com", phone: "+79834986434",
                              sex: "m", birthday: Date.today, inn: "212392748777",
                             certificate_of_insurance: "4234234423", password: "password")
    doctor = Doctor.create!(name: "Name", surname: "Surname", email: "test@mail.com", phone: "+79834986434",
                            password: "password")
    doctor.request_access(patient.id)
    access_password = patient.access_password
    assert patient.get_access(doctor.id, access_password)
  end
end