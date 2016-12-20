require 'rails_helper'

RSpec.describe "plots/index", type: :view do
  before(:each) do
    assign(:plots, [
      Plot.create!(
        :name => "Name"
      ),
      Plot.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of plots" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
