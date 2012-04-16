class Post < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :author
  has_many :comments
end
