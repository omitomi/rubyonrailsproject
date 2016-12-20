require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :name => "Name",
        :countries_id => 2,
        :biography => "Biography"
      ),
      Author.create!(
        :name => "Name",
        :countries_id => 2,
        :biography => "Biography"
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Biography".to_s, :count => 2
  end
end
