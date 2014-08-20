class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :middle_name, 
  				        :last_name

  has_many :posts, :foreign_key => :author_id
  has_many :users_roles
  has_many :roles, :through => :users_roles
  has_many :blogs, :through => :users_roles

  def all_roles
    roles.collect{|role| role.title}.join(', ')
  end
  
  def current_role
    roles.active_role.first.title
  end

  def full_name
    [first_name, middle_name, last_name].compact.join(' ')
  end

end
