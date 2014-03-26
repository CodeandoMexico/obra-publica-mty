json.array!(@obras) do |obra|
  json.extract! obra, :id, :name, :monto, :status, :avance
  json.url obra_url(obra, format: :json)
end
