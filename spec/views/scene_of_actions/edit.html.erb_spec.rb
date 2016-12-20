require 'rails_helper'

RSpec.describe "scene_of_actions/edit", type: :view do
  before(:each) do
    @scene_of_action = assign(:scene_of_action, SceneOfAction.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit scene_of_action form" do
    render

    assert_select "form[action=?][method=?]", scene_of_action_path(@scene_of_action), "post" do

      assert_select "input#scene_of_action_name[name=?]", "scene_of_action[name]"
    end
  end
end
