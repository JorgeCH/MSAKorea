json.array!(@formalities) do |formality|
  json.extract! formality, :id, :name, :description, :image
  json.url formality_url(formality, format: :json)
end
