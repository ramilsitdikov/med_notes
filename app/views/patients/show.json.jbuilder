json.meta do
end

json.data do
  json.extract! @patient, :id, :name, :surname, :email, :phone, :sex, :birthday, :inn, :coi
end
