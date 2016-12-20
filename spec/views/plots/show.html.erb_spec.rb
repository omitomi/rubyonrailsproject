require 'rails_helper'

RSpec.describe "plots/show", type: :view do
  before(:each) do
    @plot = assign(:plot, Plot.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
