json.array!(@products) do |product|
  json.extract! product, :id, :name, :date, :image, :clock
  json.url product_url(product, format: :json)
end
