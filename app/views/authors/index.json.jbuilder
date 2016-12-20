json.array!(@authors) do |author|
  json.extract! author, :name, :countries_id, :bithday, :deathday, :biography
  json.url author_url(author, format: :json)
end