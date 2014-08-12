class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :middle_name, 
  				        :last_name

  has_many :posts
  has_many :users_roles
  has_many :roles, :through => :users_roles

  def current_role
    roles.active_role.first.title
  end

end
