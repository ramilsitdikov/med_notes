# encode: UTF-8
require 'telegram/bot'

task :start_bot => :environment do
  token = "202994978:AAELxDFwYTmXJkoz-m2lr-pjc9OgScn5tT4"
  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
        when '/start'
          patient = Patient.find_by_username(message.from.username)
          patient.update(chat_id: message.chat.id) if patient.present?
        else
          bot.api.sendMessage(chat_id: message.chat.id, text: "Unrecognized command. Say what?")
      end
    end
  end
end
