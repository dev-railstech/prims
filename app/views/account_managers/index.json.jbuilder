json.array!(@account_managers) do |account_manager|
  json.extract! account_manager, :id, :code, :name, :joining_date
  json.url account_manager_url(account_manager, format: :json)
end
