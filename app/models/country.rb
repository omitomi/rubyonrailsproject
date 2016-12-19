class Country < ActiveRecord::Base
  default_scope -> { order('name ASC') }
  validates :name,  presence: true, uniqueness: { case_sensitive: false }
end
