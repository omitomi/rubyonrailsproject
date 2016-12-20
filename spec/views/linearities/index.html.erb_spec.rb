require 'rails_helper'

RSpec.describe "linearities/index", type: :view do
  before(:each) do
    assign(:linearities, [
      Linearity.create!(
        :name => "Name"
      ),
      Linearity.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of linearities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
