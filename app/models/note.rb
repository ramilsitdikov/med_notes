class Note < ActiveRecord::Base
  validates :symptoms, :diagnosis, :conclusion, :assigning,
            presence: true
  belongs_to :patient
  belongs_to :doctor
end
