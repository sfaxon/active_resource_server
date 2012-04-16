class Address < ActiveRecord::Base
  belongs_to :person
  attr_accessible :person, :street, :state, :zipcode
end
