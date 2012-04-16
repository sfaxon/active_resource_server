# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

author = nil
if Author.count < 1
  author = Author.create(name: 'Gabby Blogger')
else
  author = Author.first
end

post = nil
if Post.count < 1
  post = Post.create(author: author, 
                     title:  'ActiveResource now has associations',
                     body:   'Lorem Ipsum')
else
  post = Post.first
end

if Comment.count < 2
  Comment.create(post: post, content: 'First Post')
  Comment.create(post: post, content: 'More insight')
end

if Person.count < 2
  Person.create(first: 'Tyler', last: 'Durden').tap do |tyler|
    Address.create(person: tyler, street: 'Paper St.', state: 'CA', zipcode: '90067')
  end
  Person.create(first: 'Tony', last: 'Stark')
end