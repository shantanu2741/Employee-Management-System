# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

employee = Employee.create()


employee=Employee.create(first_name:, last_name: "", email: "Ajay@123", city: "Banglore", state: "Mh", country: "I
ndia")


employee.update(first_name: "Sham", last_name: "Khanna", email: "Sham@123", city: "Pune", state: "Mh", country: "I
ndia")
employee.update(first_name: "Raman", last_name: "Vaje", email: "Raman@123", city: "Hyderabad", state: "TL", country: "I
ndia")
