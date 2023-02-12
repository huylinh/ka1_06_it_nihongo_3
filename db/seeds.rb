# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..50).each do |id|
    User.create!(
        email: Faker::Internet.email,
        name: Faker::Name.name ,
        phone: Faker::PhoneNumber.cell_phone,
        address: Faker::Address.full_address,
        # issue each user the same password
        password: "123456", 
        password_confirmation: "123456",
    )
end


(1..20).each do |id|
    Product.create!(
        # each user is assigned an id from 1-20
        product_name: Faker::Commerce.product_name , 
        category: Faker::Commerce.department(max: 2, fixed_amount: true),
        description: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4),
        price: Faker::Number.number(digits: 3),
        img: Faker::LoremFlickr.image
    )
end


# (1..5).each do |id|
#     Bill.create!(
#         # each user is assigned an id from 1-20
#         size: Faker::Number.within(range: 30..40) , 
#         quality: Faker::Number.within(range: 10..50),
#         product: Product.find(Faker::Number.within(range: 1..50))
#     )
# end

# # Course
# (1..40).each do |id|
#     Course.create!(
#         # each user is assigned an id from 1-20
#         id: id, 
#         title: Faker::Book.title,
#         desc: Faker::Lorem.paragraph,
#         author: User.find(Faker::Number.within(range: 1..20))  
#     )
# end

# # Vocabulary
# (1..10).each do |id|
#     Vocabulary.create!(
#         # each user is assigned an id from 1-20
#         id: id, 
#         word: Faker::Kpop.girl_groups,
#         define: Faker::Lorem.paragraph,
#         link: Faker::Internet.url,
#         kind: Faker::Number.within(range: 0..5),
#         course: Course.find(Faker::Number.within(range: 1..10))
#     )
# end

# # Comment
# (1..20).each do |id|
#     Comment.create!(
#         # each user is assigned an id from 1-20
#         id: id, 
#         content: Faker::Lorem.sentence,
#         course: Course.find(Faker::Number.within(range: 1..40)),
#         user: User.find(Faker::Number.within(range: 1..50))
#     )
# end

# # Rating
# (1..15).each do |id|
#     Rating.create!(
#         # each user is assigned an id from 1-20
#         id: id, 
#         star: Faker::Number.within(range: 1..5),
#         course: Course.find(Faker::Number.within(range: 1..40)),
#         user: User.find(Faker::Number.within(range: 1..50))
#     )
# end


# #  Progress
# (1..15).each do |id|
#     Progress.create!(
#         # each user is assigned an id from 1-20
#         id: id, 
#         point: Faker::Number.within(range: 1..1000),
#         course: Course.find(Faker::Number.within(range: 1..40)),
#         user: User.find(Faker::Number.within(range: 1..50)),
#         vocabulary: Vocabulary.find(Faker::Number.within(range: 1..10))
#     )
# end



# #  Collection
# (1..10).each do |id|
#     Collection.create!(
#         # each user is assigned an id from 1-20
#         id: id, 
#         title: Faker::Educator.course_name,
#         desc: Faker::Lorem.paragraph,
#         image: Faker::LoremFlickr.image,
#         author: User.find(Faker::Number.within(range: 1..20))
#     )
# end

# #  Collections course
# (1..15).each do |id|
#     CollectionsCourse.create!(
#         # each user is assigned an id from 1-20
#         id: id, 
#         course: Course.find(Faker::Number.within(range: 1..20)),
#         collection: Collection.find(Faker::Number.within(range: 1..10))
#     )
# end

# #  Bookmark Course
# (1..15).each do |id|
#     BookmarkCourse.create!(
#         # each user is assigned an id from 1-20
#         id: id, 
#         course: Course.find(Faker::Number.within(range: 1..10)),
#         user: User.find(Faker::Number.within(range: 1..10))
#     )
# end

# #  Bookmark Collection
# (1..15).each do |id|
#     BookmarkCollection.create!(
#         # each user is assigned an id from 1-20
#         id: id, 
#         collection: Collection.find(Faker::Number.within(range: 1..10)),
#         user: User.find(Faker::Number.within(range: 1..50))
#     )
# end