class CreateBooksInPost < ActiveRecord::Migration
  def change
	add_column :microposts, :book_id, :integer
  end
end
