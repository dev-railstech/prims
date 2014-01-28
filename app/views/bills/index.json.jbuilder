json.array!(@bills) do |bill|
  json.extract! bill, :id, :company_id, :contract_id, :period, :item_id, :type, :collect, :discount, :unique, :number, :yr, :qty, :vat, :closed, :val, :date
  json.url bill_url(bill, format: :json)
end
