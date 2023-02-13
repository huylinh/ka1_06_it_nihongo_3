# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
    email: "a@email.com",
    name: "ハーキャプテン",
    phone: "113",
    address: "ハノイ",
    # issue each user the same password
    password: "123456", 
    password_confirmation: "123456",
)



Product.create!(
    # each user is assigned an id from 1-20
    product_name: "ナイキ ハンター", 
    category: "ナイキ",
    description: "値段がとても安いです。",
    price: "200",
    img: Faker::LoremFlickr.image
)


Product.create!(
    # each user is assigned an id from 1-20
    product_name: "コンバート ハンター", 
    category: "コンバート",
    description:  "値段が安いです。",
    price: "400",
    img: Faker::LoremFlickr.image
)

Product.create!(
    # each user is assigned an id from 1-20
    product_name: "バレンシアガ ハンター", 
    category: "バレンシアガ",
    description: "値段が安いです。";
    price: "500",
    img: Faker::LoremFlickr.image
)
