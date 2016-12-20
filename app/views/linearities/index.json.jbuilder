json.array!(@linearities) do |linearity|
  json.extract! linearity, :name
  json.url linearity_url(linearity, format: :json)
end