require 'rails_helper'

RSpec.describe "plots/new", type: :view do
  before(:each) do
    assign(:plot, Plot.new(
      :name => "MyString"
    ))
  end

  it "renders new plot form" do
    render

    assert_select "form[action=?][method=?]", plots_path, "post" do

      assert_select "input#plot_name[name=?]", "plot[name]"
    end
  end
end
