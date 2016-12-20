class Book < ActiveRecord::Base
  has_and_belongs_to_many :scene_of_actions
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :plots
  has_many :comments
  has_many :users, through: :comments
  belongs_to :author
  belongs_to :type
  belongs_to :linearity
  default_scope -> { order('name ASC') }
  validates :name,  presence: true
  #attr_accessible :name, :author_id, :type_id, :linearity_id
end
