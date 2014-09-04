class UsersRole < ActiveRecord::Base
  attr_accessible :active, :role_id, :user_id

  belongs_to :role, :foreign_key => :role_id
  belongs_to :user, :foreign_key => :user_id
  has_and_belongs_to_many :blogs

  scope :user_active_role, lambda{|user| { :conditions => { :user_id => user.id, :active => true } } }

end
