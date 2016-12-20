require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :name => "MyString",
      :type_id => 1,
      :abstract => "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_name[name=?]", "book[name]"

      assert_select "input#book_type_id[name=?]", "book[type_id]"

      assert_select "input#book_abstract[name=?]", "book[abstract]"
    end
  end
end
