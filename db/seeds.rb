# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)\


Contact.create(name: "Ann", type: "executive", title: "CEO", phone: "98475395734", email: "executive")
Contact.create(name: "Mary", type: "InmarAR", title: "Lorem Ipsum", phone: "98475395734", email: "InmarAR")
Contact.create(name: "John", type: "executive", title: "DolorSit", phone: "98475395734", email: "executive")
Contact.create(name: "John", type: "daily", title: "DolorSit", phone: "98475395734", email: "daily")
Contact.create(name: "John", type: "other", title: "Lorem Ipsum", phone: "98475395734", email: "other")
