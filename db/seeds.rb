# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
    email: Faker::Internet.email,
    name: Faker::Name.name ,
    phone: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.full_address,
    # issue each user the same password
    password: "123456", 
    password_confirmation: "123456",
)



Product.create!(
    # each user is assigned an id from 1-20
    product_name: "hihi", 
    category: Faker::Commerce.department(max: 2, fixed_amount: true),
    description: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4),
    price: Faker::Number.number(digits: 3),
    img: Faker::LoremFlickr.image
)


Product.create!(
    # each user is assigned an id from 1-20
    product_name: "hihi", 
    category: Faker::Commerce.department(max: 2, fixed_amount: true),
    description: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4),
    price: Faker::Number.number(digits: 3),
    img: Faker::LoremFlickr.image
)

Product.create!(
    # each user is assigned an id from 1-20
    product_name: "hihi", 
    category: Faker::Commerce.department(max: 2, fixed_amount: true),
    description: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4),
    price: Faker::Number.number(digits: 3),
    img: Faker::LoremFlickr.image
)
