# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = Admin.create(name:"alex",  email: 'alex@mail.com', password:"trojan123", password_confirmation:"trojan123")
admin.save!

organizer = Organizer.create(name:"peter",  email: 'p@mail.com', password:"trojan123", password_confirmation:"trojan123")
organizer.save!

project = Project.create(title:"First project of peter",  organizer_id: '1')
project.save!