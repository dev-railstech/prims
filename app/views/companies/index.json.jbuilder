json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address_1, :address_2, :address_3, :post_code, :current_period, :date_on, :date_last_run, :next_bill_no, :current_year, :next_contract_number, :next_allocation_number
  json.url company_url(company, format: :json)
end
