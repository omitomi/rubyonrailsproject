require 'rails_helper'

RSpec.describe "linearities/edit", type: :view do
  before(:each) do
    @linearity = assign(:linearity, Linearity.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit linearity form" do
    render

    assert_select "form[action=?][method=?]", linearity_path(@linearity), "post" do

      assert_select "input#linearity_name[name=?]", "linearity[name]"
    end
  end
end
