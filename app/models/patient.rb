class Patient < ActiveRecord::Base
  validates :name, :surname, :email, :phone, :sex, :birthday, :inn, :certificate_of_insurance, :password,
            presence: true
  validates :email, :phone, :inn, :certificate_of_insurance,
            uniqueness: true
  has_many :notes

  def generate_access_password
    new_password = SecureRandom.hex(2)
    update(access_password: new_password)
    send_password
  end

  def get_access(doctor_id, access_password)
    AccessSession.create!(doctor_id: doctor_id, patient_id: id) if access_password == self.access_password
  end

  private
    def send_password
    #   TODO
    end
end

