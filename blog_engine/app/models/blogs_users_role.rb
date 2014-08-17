class BlogsUsersRole < ActiveRecord::Base

  attr_accessible :users_role_id, :blog_id

  belongs_to :users_role
  belongs_to :blog
end
