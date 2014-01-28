json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :date, :chq_no, :debit, :credit, :description, :allocation_id, :balance
  json.url transaction_url(transaction, format: :json)
end
