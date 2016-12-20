require 'rails_helper'

RSpec.describe "creat_plots/new", type: :view do
  before(:each) do
    assign(:creat_plot, CreatPlot.new(
      :name => "MyString"
    ))
  end

  it "renders new creat_plot form" do
    render

    assert_select "form[action=?][method=?]", creat_plots_path, "post" do

      assert_select "input#creat_plot_name[name=?]", "creat_plot[name]"
    end
  end
end
