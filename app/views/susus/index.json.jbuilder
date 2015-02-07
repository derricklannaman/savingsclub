json.array!(@susus) do |susu|
  json.extract! susu, :id
  json.url susu_url(susu, format: :json)
end
