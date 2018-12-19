# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of t  he Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com',
                    password: 'password',
                    password_confirmation: 'password',
                    role: 'admin')
  AdminUser.create!(email: 'author@example.com',
                    password: 'password',
                    password_confirmation: 'password',
                    role: 'author')
end