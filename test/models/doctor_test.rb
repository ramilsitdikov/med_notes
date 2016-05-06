require 'test_helper'

class DoctorTest < ActiveSupport::TestCase

  test 'should show notes' do
    doctor = Doctor.new
    assert_not doctor.save

    doctor = Doctor.new(name: "Name", surname: "Surname", email: "test@mail.com", phone: "+79834986434",
                        password: "password")
    assert doctor.save
  end
end
