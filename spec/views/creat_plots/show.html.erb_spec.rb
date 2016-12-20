require 'rails_helper'

RSpec.describe "creat_plots/show", type: :view do
  before(:each) do
    @creat_plot = assign(:creat_plot, CreatPlot.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
