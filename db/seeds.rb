Movie.destroy_all
Review.destroy_all
Viewer.destroy_all

puts "🌱 Seeding spices..."

15.times {
  Viewer.create(
    name:Faker::Name.name,
    age:rand(10..90)
  )
}

10.times {
  Movie.create(
    title:Faker::Movie.title,
    release_date:Faker::Date.between(from: 30.days.ago, to:Date.today),
    cast:Faker::Name.name,
    director:Faker::Name.name,
    producer:Faker::Name.name,
    image_URL: "www.imageURL.com"
  )
}

20.times {
  Review.create(
  movie_id:Movie.all.sample.id,
  viewer_id:Viewer.all.sample.id,
  name:Faker::Name.name,
  review:Faker::Movie.quote
  )
}



# Seed your database here

puts "✅ Done seeding!"
