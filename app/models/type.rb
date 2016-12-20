class Type < ActiveRecord::Base
  has_many :books
  default_scope -> { order('name ASC') }
  validates :name,  presence: true, uniqueness: { case_sensitive: false }
end
