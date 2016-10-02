# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name: "字母",
            email: "example_1@railstutorial.org",
            company: "FM2010",
            telephone: "12312312313",
            password: "foobar",
            password_confirmation: "foobar",
            admin:     true)


99.times do |n|
    name = "种酱#{n+1}号"
    email = "example-#{n+1}@railstutorial.org"
    company = "FM2010"
    telephone = "12312312313"
    password = "password"
    User.create!(name: name,
        email: email,
        company: company,
        telephone: telephone,
        password: password,
        password_confirmation: password)
end