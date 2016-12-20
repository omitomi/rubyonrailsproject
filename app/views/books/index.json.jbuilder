json.array!(@books) do |book|
  json.extract! book, :name, :type_id, :abstract
  json.url book_url(book, format: :json)
end