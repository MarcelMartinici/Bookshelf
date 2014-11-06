# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: 'user@gmail.com', 
             password: '123456789', 
             password_confirmation: '123456789')

Book.create(title: 'Amintiri din copilarie'
             author_id: '1'
             year: '1850')

Book.create(title: 'Dracula'
             author_id: '1'
             year: '1900')

Book.create(title: 'Steve Jobs'
             author_id: '1'
             year: '2013')
