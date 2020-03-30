# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "crowley3", password: "happyday123")
User.create(username: "crowle2", password: "happyday123")
User.create(username: "crowley1", password: "happyday123")
Message.create(body: "hello world", user: User.find(2))
Message.create(body: "hello again world", user: User.find(1))
Message.create(body: "Goodbye world", user: User.find(2))
Message.create(body: "The guy before me is one dark person", user: User.find(4))