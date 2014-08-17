class Blog < ActiveRecord::Base
  attr_accessible :blog_address, :description, :title

  validates :blog_address, :presence => true
  validates :title, :presence => true

  has_and_belongs_to_many :users_roles
  has_and_belongs_to_many :users
  has_many :posts
end
