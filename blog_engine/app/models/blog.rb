class Blog < ActiveRecord::Base
  attr_accessible :blog_address, :description, :title
  
  validates :blog_address, :presence => true
  validates :title, :presence => true

  has_and_belongs_to_many :users_roles
  has_many :users, :through => :users_roles
  has_many :posts

  def self.formatted_blogs user
    blogs = {}
    user.users_roles.includes(:role, :blogs).each {|user_role| blogs[user_role.role.title] = user_role.blogs}
    blogs
  end

end
