require 'rails_helper'

RSpec.describe "linearities/show", type: :view do
  before(:each) do
    @linearity = assign(:linearity, Linearity.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
