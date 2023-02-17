# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(name: "Tester", email: "test@example.com", password: 123456)
group = Group.create(name: 'Test Group', user: user,
                    icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Sign-check-icon.png/800px-Sign-check-icon.png')
transaction = Transac.create(name: 'First transaction', amount: 155, author: user, group: group)
transaction = Transac.create(name: 'Second transaction', amount: 245, author: user, group: group)
transaction = Transac.create(name: 'Third transaction', amount: 345, author: user, group: group)