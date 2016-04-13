json.meta do
end

json.data do
  json.partial! 'notes/note', note: @note
end
