Like.destroy_all
Comment.destroy_all
Post.destroy_all

kay = User.find_or_create_by!(email: "kay@blogpulse.com") do |u|
  u.username = "Kay"
  u.password = "password123"
  u.confirmed_at = Time.current
end

maya = User.find_or_create_by!(email: "maya@blogpulse.com") do |u|
  u.username = "Maya"
  u.password = "password123"
  u.confirmed_at = Time.current
end

alex = User.find_or_create_by!(email: "alex@blogpulse.com") do |u|
  u.username = "Alex"
  u.password = "password123"
  u.confirmed_at = Time.current
end

posts = []

posts << Post.create!(
  title: "The Tyranny of Constant Productivity",
  body: "Modern culture encourages us to optimize every minute of our lives. Productivity has become a moral virtue, making rest feel like guilt. Yet some of the most meaningful ideas emerge when we stop measuring our worth through output.",
  user: kay
)

posts << Post.create!(
  title: "The Lost Art of Walking Without Purpose",
  body: "Walking used to be an activity in itself. Today, every walk is tracked, measured, and optimized. What happens when we walk simply to observe the world around us?",
  user: maya
)

posts << Post.create!(
  title: "Engineering and the Illusion of Certainty",
  body: "Engineering teaches us to seek precise answers. Real life rarely provides them. The challenge is learning how to act despite uncertainty.",
  user: alex
)

posts << Post.create!(
  title: "Why Boredom Might Be Good For You",
  body: "We fill every spare second with content. Yet boredom has historically been the birthplace of creativity, reflection, and original thought.",
  user: kay
)

posts << Post.create!(
  title: "The Internet Killed Waiting",
  body: "Streaming, same-day delivery, and instant communication have removed waiting from daily life. But waiting once shaped patience, anticipation, and appreciation.",
  user: maya
)

posts << Post.create!(
  title: "Notes From a Bangalore Weekend",
  body: "Cities reveal themselves through small moments: crowded cafes, conversations with strangers, and long walks through unfamiliar neighborhoods.",
  user: kay
)

posts << Post.create!(
  title: "Building BlogPulse",
  body: "What started as a Rails learning project became a complete blogging platform with authentication, comments, likes, profiles, and deployment.",
  user: alex
)

posts << Post.create!(
  title: "The Value of Doing Difficult Things",
  body: "Growth often feels uncomfortable because it requires confronting limitations. The reward is not success itself, but the person you become.",
  user: maya
)

Comment.create!(
  body: "One of the best articles I've read recently.",
  user: alex,
  post: posts[0]
)

Comment.create!(
  body: "This made me rethink how I spend my free time.",
  user: maya,
  post: posts[0]
)

Comment.create!(
  body: "Completely agree with this perspective.",
  user: kay,
  post: posts[1]
)

Comment.create!(
  body: "A very thoughtful piece.",
  user: alex,
  post: posts[3]
)

Comment.create!(
  body: "The Bangalore article felt very relatable.",
  user: maya,
  post: posts[5]
)

Like.create!(user: kay, post: posts[0])
Like.create!(user: maya, post: posts[0])
Like.create!(user: alex, post: posts[0])

Like.create!(user: kay, post: posts[1])
Like.create!(user: alex, post: posts[1])

Like.create!(user: maya, post: posts[2])

Like.create!(user: kay, post: posts[3])
Like.create!(user: alex, post: posts[3])

Like.create!(user: kay, post: posts[5])
Like.create!(user: maya, post: posts[5])

puts "BlogPulse seeded successfully!"