json.array!(@descriptions) do |description|
  json.extract! description, :id, :name, :logo, :text
  json.url description_url(description, format: :json)
end
