json.array!(@fbikes) do |fbike|
  json.extract! fbike, :id, :name, :description, :price, :image_url
  json.url fbike_url(fbike, format: :json)
end
