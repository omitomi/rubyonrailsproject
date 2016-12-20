class Country < ActiveRecord::Base
  has_many :author
  default_scope -> { order('name ASC') }
  validates :name,  presence: true, uniqueness: { case_sensitive: false }
end
