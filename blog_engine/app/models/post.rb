class Post < ActiveRecord::Base
  attr_accessible :body, :title, :author_id, :blog_id

  validates :body, :presence => true
  validates :title, :presence => true

  belongs_to :blog, :foreign_key => :blog_id
  belongs_to :user, :foreign_key => :author_id
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :categories

end
