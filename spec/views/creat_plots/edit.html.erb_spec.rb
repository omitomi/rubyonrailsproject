require 'rails_helper'

RSpec.describe "creat_plots/edit", type: :view do
  before(:each) do
    @creat_plot = assign(:creat_plot, CreatPlot.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit creat_plot form" do
    render

    assert_select "form[action=?][method=?]", creat_plot_path(@creat_plot), "post" do

      assert_select "input#creat_plot_name[name=?]", "creat_plot[name]"
    end
  end
end
