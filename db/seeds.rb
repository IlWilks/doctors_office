# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


doctors = []
patients = []
appointments = ["morning", "afternoon", "evening"]

10.times do |i|
 patients << Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

3.times do |i|
  doctors << Doctor.create(name: Faker::Games::Pokemon.name)
end

doctors.each do |doctor|
  doctor.appointments.create(time: appointments.sample, patient_id: patients.sample.id)
end

