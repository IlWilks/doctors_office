# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


doctors = []
patients = []
appointment_time = ["morning", "afternoon", "evening"]

2.times do
  doctor = doctor.create(
    name: Faker::Games::Pokemon.name
  )
 
  3.times do 
    patient = Patient.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )

    Appointment.create(
      time: appointment_time.sample,
      doctor_id: doctor.id,
      patient_id: patient.id
    )
  end
end

