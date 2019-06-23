# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{username: "admin-ensias", password: "ensiasmdp", name: "Admin", email: "ensiask@gmail.com", isadmin: 1},
            {username: "admin-groupe1", password: "groupe1mdp", name: "groupe1", email: "ensiask@gmail.com", isadmin: 1, group: 1},
            {username: "admin-groupe2", password: "groupe2mdp", name: "groupe2", email: "ensiask@gmail.com", isadmin: 1, group: 2}])
