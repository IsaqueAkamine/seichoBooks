json.array!(@products) do |product|
  json.extract! product, :id, :name, :product_category_id, :description
  json.url product_url(product, format: :json)
end
