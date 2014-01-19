json.array!(@products) do |product|
  json.extract! product, :id, :code, :description, :nom_code, :cost
  json.url product_url(product, format: :json)
end
