include RandomData
include RandomAdData

# Posts & Comments
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

# Advertisements
50.times do
  Advertisement.create!(
    title: RandomAdData.random_ad_sentence,
    copy: RandomAdData.random_ad_paragraph,
    price: RandomAdData.random_ad_price
    )
end

puts "Seed Finished"
puts "#{Post.count} posts created."
puts "#{Comment.count} comments created."
puts "#{Advertisement.count} ads created."
