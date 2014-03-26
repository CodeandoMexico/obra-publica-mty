json.array!(@municipios) do |municipio|
  json.extract! municipio, :id, :name
  json.url municipio_url(municipio, format: :json)
end
