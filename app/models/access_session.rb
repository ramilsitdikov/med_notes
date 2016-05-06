class AccessSession < ActiveRecord::Base
  validates :patient_id, :doctor_id,
            presence: true
  belongs_to :doctor
  belongs_to :patient
end
