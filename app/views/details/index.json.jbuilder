json.array!(@details) do |detail|
  json.extract! detail, :id, :description, :vat_code, :val, :nom, :qty, :item_val, :link, :date_added, :plink, :suspend, :why, :date, :vat, :closed, :val, :date, :contract_id
  json.url detail_url(detail, format: :json)
end
