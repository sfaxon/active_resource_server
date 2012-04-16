class Comment < ActiveRecord::Base
  attr_accessible :content, :post
  belongs_to :post
end
