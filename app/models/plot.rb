class Plot < ActiveRecord::Base
  has_and_belongs_to_many :books
  default_scope -> { order('name ASC') }
  validates :name,  presence: true, uniqueness: { case_sensitive: false }
end
