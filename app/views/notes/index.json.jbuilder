json.meta do
  json.total @total
end

json.data @notes do |note|
  json.partial! 'notes/note', note: note
end
