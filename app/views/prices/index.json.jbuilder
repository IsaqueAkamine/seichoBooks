json.array!(@prices) do |price|
  json.extract! price, :id, :product_id, :company_id, :price, :starts_at, :end_at
  json.url price_url(price, format: :json)
end
