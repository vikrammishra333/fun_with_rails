class UsersRole < ActiveRecord::Base
  attr_accessible :active, :role_id, :user_id

  belongs_to :role, :foreign_key => :role_id
  belongs_to :user, :foreign_key => :user_id
end
