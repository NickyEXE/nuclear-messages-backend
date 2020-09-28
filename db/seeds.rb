# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

yucca = Facility.create(name: "Yucca Mountains", location: "Nevada")

pilot = Facility.create(name: "Waste Isolation Pilot Plant", location: "New Mexico")

yucca.messages.create(content: "Something man-made is here")
yucca.messages.create(content: "This place is not a place of honor... no highly esteemed deed is commemorated here... nothing valued is here.")
yucca.messages.create(content: "The danger is still present, in your time, as it was in ours.")
yucca.messages.create(content: "The danger is in a particular location... it increases towards a center... the center of danger is here... of a particular size and shape, and below us.")
yucca.messages.create(content: "Sending this message was important to us. We considered ourselves to be a powerful culture.")
pilot.messages.create(content: "This place is a message... and part of a system of messages... pay attention to it!")
pilot.messages.create(content: "What is here was dangerous and repulsive to us. This message is a warning about danger.")
pilot.messages.create(content: "The danger is to the body, and it can kill.")
pilot.messages.create(content: "The form of the danger is an emanation of energy.")
pilot.messages.create(content: "This place is best shunned and left uninhabited.")
