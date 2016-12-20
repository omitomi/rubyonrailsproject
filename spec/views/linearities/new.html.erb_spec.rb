require 'rails_helper'

RSpec.describe "linearities/new", type: :view do
  before(:each) do
    assign(:linearity, Linearity.new(
      :name => "MyString"
    ))
  end

  it "renders new linearity form" do
    render

    assert_select "form[action=?][method=?]", linearities_path, "post" do

      assert_select "input#linearity_name[name=?]", "linearity[name]"
    end
  end
end
