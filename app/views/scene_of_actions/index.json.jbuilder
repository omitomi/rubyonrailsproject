json.array!(@scene_of_actions) do |scene_of_action|
  json.extract! scene_of_action, :name
  json.url scene_of_action_url(scene_of_action, format: :json)
end