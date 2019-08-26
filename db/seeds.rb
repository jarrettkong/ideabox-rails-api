3.times do 
  Idea.create({
    title: Faker::Book.title,
    body: Faker::Lorem.sentence
  })
end