json.array!(@genres) do |genre|
  json.extract! genre, :name, :description
  json.url genre_url(genre, format: :json)
end