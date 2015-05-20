json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :date, :place, :description, :linkfb, :contact, :photo1, :photo2
  json.url activity_url(activity, format: :json)
end
