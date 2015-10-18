include RandomData

# Create users
5.times do
  user = User.create!(
    name: RandomData.random_name,
    email: RandomData.random_email,
    password: RandomData.random_sentence
    )
end

users = User.all

# Create topics
15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
    )
end

topics = Topic.all

50.times do
  Post.create!(
    user: users.sample,
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
    )
end

posts = Post.all

100.times do
  Comment.create!(
    user: users.sample,
    post: posts.sample,
    body: RandomData.random_paragraph
    )
end

# Admin User
admin = User.create!(
  name: "Carl",
  email: "carl@tabrific.com",
  password: "Yellow",
  role: "admin"
  )
  
# Member User
member = User.create!(
  name: "Member User",
  email: "member@bloccit.com",
  password: "password"
  )

puts "Seed Finished"
puts "#{User.count} users created."
puts "#{Topic.count} topics created."
puts "#{Post.count} posts created."
puts "#{Comment.count} comments created."
