json.array!(@allocations) do |allocation|
  json.extract! allocation, :id, :descriptiom, :contract_id, :debit, :credit, :supplier_id, :analysis
  json.url allocation_url(allocation, format: :json)
end
