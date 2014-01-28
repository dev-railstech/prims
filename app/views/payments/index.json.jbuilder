json.array!(@payments) do |payment|
  json.extract! payment, :id, :times, :title
  json.url payment_url(payment, format: :json)
end
