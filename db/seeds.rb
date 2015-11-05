# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = Admin.create(name:"alex",  email: 'alex@mail.com', password:"trojan123", password_confirmation:"trojan123")
admin.save!


organizer1 = Organizer.create(name:"peter",  email: 'p@mail.com', password:"trojan123", password_confirmation:"trojan123")
organizer1.save!

organizer2 = Organizer.create(name:"lars",  email: 'l@mail.com', password:"trojan123", password_confirmation:"trojan123")
organizer2.save!


project1 = Project.create(title:"First project of peter",  organizer_id: '1', description:"mega long description")
project1.save!

project2 = Project.create(title:"Cool project of Lars",  organizer_id: '2', description:"also mega long description")
project2.save!


subscription_type_1 = SubscriptionType.create(title:"bronze", price:"5")
subscription_type_1.save!

subscription_type_2 = SubscriptionType.create(title:"silver", price:"20")
subscription_type_2.save!

subscription_type_3 = SubscriptionType.create(title:"gold", price:"100")
subscription_type_3.save!