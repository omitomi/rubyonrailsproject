require 'rails_helper'

RSpec.describe "scene_of_actions/new", type: :view do
  before(:each) do
    assign(:scene_of_action, SceneOfAction.new(
      :name => "MyString"
    ))
  end

  it "renders new scene_of_action form" do
    render

    assert_select "form[action=?][method=?]", scene_of_actions_path, "post" do

      assert_select "input#scene_of_action_name[name=?]", "scene_of_action[name]"
    end
  end
end
