# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'test', last_name: 'testy', birthdate: '12-12-2021', email: 'test@gmail.com', password_digest: '123', phone_number: '1234567890')
User.create(first_name: 'Siobhan', last_name: 'McCaffrey', birthdate: '07-09-1996', email: 'siobhanamccafrey@gmail.com', password_digest: '123', phone_number: '8439573932')

Availability.create(day_of_week: 1, start: '1:00', end: '2:00')
Availability.create(day_of_week: 2, start: '1:00', end: '2:00')

Package.create(title: 'test', price: 1, number_of_meetings: 1)
Package.create(title: "Siobhan's Package", price: 300, number_of_meetings: 3)

PackageAvailability.create(availability_id: 1, package_id: 1)
PackageAvailability.create(availability_id: 2, package_id: 2)

Meeting.create(user_id: 1, package_id: 1)
Meeting.create(user_id: 2, package_id: 2)