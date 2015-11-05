# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Nomination.create(nominee: 'Primul', specialty: 'Spec1', votes: 20)
  Nomination.create(nominee: 'Al doilea', specialty: 'Spec2', votes: 10)
  Nomination.create(nominee: 'Al treilea', specialty: 'Spec1', votes: 12)
  Nomination.create(nominee: 'Ala mai naspa', specialty: 'Spec3', votes: 1)
