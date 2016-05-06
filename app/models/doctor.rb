class Doctor < ActiveRecord::Base
  validates :name, :surname, :email, :phone, :password,
            presence: true
  validates :email, :phone,
            uniqueness: true
  has_many :notes

  def request_access(patient_id)
    patient = Patient.find_by(id: patient_id)
    patient.generate_access_code
  end
end

