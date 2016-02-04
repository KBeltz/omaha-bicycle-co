json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :description, :image
  json.url employee_url(employee, format: :json)
end
