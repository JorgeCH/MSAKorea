json.array!(@prearrivals) do |prearrival|
  json.extract! prearrival, :id, :title, :description, :image
  json.url prearrival_url(prearrival, format: :json)
end
