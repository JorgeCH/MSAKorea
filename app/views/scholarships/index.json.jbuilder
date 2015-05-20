json.array!(@scholarships) do |scholarship|
  json.extract! scholarship, :id, :name, :description, :address, :link
  json.url scholarship_url(scholarship, format: :json)
end
