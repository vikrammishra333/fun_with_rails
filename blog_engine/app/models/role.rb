class Role < ActiveRecord::Base
  attr_accessible :title

  has_many :users_roles
  has_many :users, :through => :users_roles

  scope :active_role, -> { where('users_roles.active = ? ', true) }
end
