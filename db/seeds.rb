# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

scott = User.create name: "scott"
fantom = scott.rockets.create(
  name: "Fantom",
  diameter_mm: 98,
  motor_mount_mm: 38,
  mass_g: 750,
  comment: "L1 Cert rocket"
)
fantom.flights.create(
  result: "success",
  details: "L1 Certifiction",
  motor_designation: "H180",
)
cutting_edge = scott.rockets.create(
  name: "Cutting Edge",
  diameter_mm: 75,
  motor_mount_mm: 38,
  mass_g: 2200,
  comment: "Giant Leap Elipse"
)
cutting_edge.flights.create(
  result: "success",
  details: "L2 Certification",
  motor_designation: "J350",
)
