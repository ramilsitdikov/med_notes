json.meta do
end

json.data do
  json.extract! @note, :id, :symptoms, :diagnosis, :conclusion, :assigning
end
