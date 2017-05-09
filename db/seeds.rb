Contract.delete_all
Player.delete_all
Sponsor.delete_all
Team.delete_all


t1 = Team.create({name: "A team"})
t2 = Team.create({name: "B team"})

p1 = Player.create({team: t1, name: "Michael Jordan"})
p2 = Player.create({team: t1, name: "Don Bradman"})
p3 = Player.create({team: t1, name: "Messi"})

s1 = Sponsor.create({name: "Coca-Cola"})
s2 = Sponsor.create({name: "Pepsi"})

Contract.create({
  player: p1,
  sponsor: s1,
  price: 100000,
  company: "Agent 1"
  })

Contract.create({
  player: p1,
  sponsor: s2,
  price: 10000324,
  company: "Agent 2"
  })

Contract.create({
  player: p2,
  sponsor: s1,
  price: 100003,
  company: "Agent 1"
  })



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
