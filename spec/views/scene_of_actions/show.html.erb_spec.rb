require 'rails_helper'

RSpec.describe "scene_of_actions/show", type: :view do
  before(:each) do
    @scene_of_action = assign(:scene_of_action, SceneOfAction.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
