include RandomData

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
    )
end

posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
    )
end

Post.find_or_create_by(title: "Unique title", body: "This is unique body.")
#Post.comments.find_or_create_by(body: "This is unique comment.", post: post)

puts "Seed Finished"
puts "#{Post.count} posts created."
puts "#{Comment.count} comments created."
