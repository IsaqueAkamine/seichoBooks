json.array!(@stocks) do |stock|
  json.extract! stock, :id, :company_id, :product_id, :quantity
  json.url stock_url(stock, format: :json)
end
