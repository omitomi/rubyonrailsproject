require 'rails_helper'

RSpec.describe "authors/new", type: :view do
  before(:each) do
    assign(:author, Author.new(
      :name => "MyString",
      :countries_id => 1,
      :biography => "MyString"
    ))
  end

  it "renders new author form" do
    render

    assert_select "form[action=?][method=?]", authors_path, "post" do

      assert_select "input#author_name[name=?]", "author[name]"

      assert_select "input#author_countries_id[name=?]", "author[countries_id]"

      assert_select "input#author_biography[name=?]", "author[biography]"
    end
  end
end
