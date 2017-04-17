json.array!(@bicycles) do |bicycle|
  json.extract! bicycle, :id, :name, :description, :price, :image_url, :category, :brand
  json.url bicycle_url(bicycle, format: :json)
end
