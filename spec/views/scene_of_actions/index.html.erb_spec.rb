require 'rails_helper'

RSpec.describe "scene_of_actions/index", type: :view do
  before(:each) do
    assign(:scene_of_actions, [
      SceneOfAction.create!(
        :name => "Name"
      ),
      SceneOfAction.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of scene_of_actions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
