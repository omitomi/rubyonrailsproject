json.array!(@plots) do |plot|
  json.extract! plot, :name
  json.url plot_url(plot, format: :json)
end