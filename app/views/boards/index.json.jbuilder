json.array!(@boards) do |board|
  json.extract! board, :id, :name, :position, :email, :year, :photo
  json.url board_url(board, format: :json)
end
