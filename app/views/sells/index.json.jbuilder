json.array!(@sells) do |sell|
  json.extract! sell, :id, :company_id, :user_id, :product_id, :price_total
  json.url sell_url(sell, format: :json)
end
