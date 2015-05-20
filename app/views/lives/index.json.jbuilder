json.array!(@lives) do |life|
  json.extract! life, :id, :title, :description, :image1, :image2, :image3, :photo
  json.url life_url(life, format: :json)
end
