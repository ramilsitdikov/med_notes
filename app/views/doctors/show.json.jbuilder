json.meta do
end

json.data do
  json.extract! @doctor, :id, :name, :surname, :email, :phone
end
