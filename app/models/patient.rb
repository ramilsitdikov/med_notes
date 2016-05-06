require 'telegram/bot'

class Patient < ActiveRecord::Base
  validates :name, :surname, :email, :phone, :sex, :birthday, :inn, :coi, :password,
            presence: true
  validates :email, :phone, :inn, :coi,
            uniqueness: true
  has_many :notes

  def generate_access_code
    new_code = SecureRandom.hex(2)
    update(access_code: new_code)
    send_password
  end

  def get_access(doctor_id, access_code)
    AccessSession.create!(doctor_id: doctor_id, patient_id: id) if access_code == self.access_code
  end

  private
    def send_password
      token = "202994978:AAELxDFwYTmXJkoz-m2lr-pjc9OgScn5tT4"
      if chat_id.present?
        bot = Telegram::Bot::Client.new(token)
        bot.api.sendMessage(chat_id: chat_id, text: access_code)
      end
    end
end

