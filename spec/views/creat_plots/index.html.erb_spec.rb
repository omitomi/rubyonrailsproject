require 'rails_helper'

RSpec.describe "creat_plots/index", type: :view do
  before(:each) do
    assign(:creat_plots, [
      CreatPlot.create!(
        :name => "Name"
      ),
      CreatPlot.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of creat_plots" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
