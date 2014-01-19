json.array!(@dealers) do |dealer|
  json.extract! dealer, :id, :code, :name, :add_1, :add_2, :add_3, :post_code, :dx, :fax, :tel, :email_1, :email_2, :email_3, :date_on
  json.url dealer_url(dealer, format: :json)
end
