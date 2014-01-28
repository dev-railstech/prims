json.array!(@let_types) do |let_type|
  json.extract! let_type, :id, :type, :description
  json.url let_type_url(let_type, format: :json)
end
