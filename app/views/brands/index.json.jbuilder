json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :type, :image
  json.url brand_url(brand, format: :json)
end
