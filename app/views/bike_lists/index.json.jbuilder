json.array!(@bike_lists) do |bike_list|
  json.extract! bike_list, :id, :name, :type, :price, :image_url
  json.url bike_list_url(bike_list, format: :json)
end
