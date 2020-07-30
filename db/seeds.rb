# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' )
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting seeds"
speciality1 = Speciality.create!(speciality: 'cardiologue')
speciality2 = Speciality.create!(speciality: 'ophtalmologue')
speciality3 = Speciality.create!(speciality: 'généraliste')
speciality4 = Speciality.create!(speciality: 'rhumatologue')
speciality5 = Speciality.create!(speciality: 'radiologue')

paris = City.create!(city_name: 'Paris')
malaga = City.create!(city_name: 'Malaga')
madrid = City.create!(city_name: 'Madrid')

doctor1 = Doctor.create!( first_name: 'José' , last_name: 'Lopez', zipcode: '75014', city: paris)
doctor2 = Doctor.create!(first_name: 'Jean', last_name: 'Dupont', zipcode: '75004', city: malaga)
doctor3 = Doctor.create!(first_name: 'Kevin', last_name: 'Roubier', zipcode: '32981', city: madrid)
doctor4 = Doctor.create!(first_name: 'Maria', last_name: 'Rosalez', zipcode: '31004', city: madrid)

doctor1.specialities << speciality3
doctor2.specialities << speciality1
doctor3.specialities << speciality2
doctor3.specialities << speciality4


patient1 = Patient.create!( first_name: 'Marie', last_name: 'Jambon', city: paris)
patient2 = Patient.create!( first_name: 'Paul', last_name: 'Machin', city: malaga)
patient3 = Patient.create!( first_name: 'Aurélie', last_name: 'Chopin', city: madrid)
patient4 = Patient.create!( first_name: 'Anna', last_name: 'Foulard', city: paris)
patient5 = Patient.create!( first_name: 'Patricia', last_name: 'Moralez', city: madrid)

appointment = Appointment.create!( date: Date.new(2020,10,5), doctor: doctor1, patient: patient1)
appointment = Appointment.create!( date: Date.new(2020,11,3), doctor: doctor2, patient: patient2)
appointment = Appointment.create!( date: Date.new(2020,9,4), doctor: doctor3, patient: patient3)
appointment = Appointment.create!( date: Date.new(2020,11,8), doctor: doctor4, patient: patient5)
appointment = Appointment.create!( date: Date.new(2020,12,25), doctor: doctor1, patient: patient4)

puts "ending seeds"
