class Person < ActiveRecord::Base
  attr_accessible :first, :last
  validates :last, :presence => true
  has_one :address
end
