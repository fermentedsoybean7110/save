json.array!(@events) do |event|
  json.extract! event, :id, :title
  json.start event.date
  json.end event.date
  json.url event_url(event, format: :html)

  if event.genres&.first&.id == 2
    json.color "#ff0000"
  else
    json.color ""
  end
end

