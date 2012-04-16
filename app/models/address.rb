class Address < ActiveRecord::Base
  belongs_to :person
  # attr_accessible :title, :body
end
