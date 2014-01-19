json.array!(@nominals) do |nominal|
  json.extract! nominal, :id, :code, :description
  json.url nominal_url(nominal, format: :json)
end
