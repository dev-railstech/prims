json.array!(@collections) do |collection|
  json.extract! collection, :id, :times, :title
  json.url collection_url(collection, format: :json)
end
