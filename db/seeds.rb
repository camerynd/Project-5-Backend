puts "Deleting old data..."

User.destroy_all
Pet.destroy_all
Score.destroy_all
Adventure.destroy_all

puts
puts "Creating users..."

user1 = User.create(username: "gameguy2112", password: "gameguypassword", bio: "I'm a guy who games", avatar: "https://64.media.tumblr.com/78849f6460b14bb226eecea58800470c/d410c7a65feb9d56-ae/s250x400/167c9c905373c333c46346f70e47eb6a8ad53b8e.jpg")
user2 = User.create(username: "gamegirl2112", password: "gamegirlpassword", bio: "I am gamer girl", avatar: "https://64.media.tumblr.com/a8b53ea52552583b0908c8989bbe31e2/d410c7a65feb9d56-64/s250x400/88f70e6183ac66b64e4a7b1086cf4f0a32e3ba9a.jpg")

puts
puts "Creating pets..."



puts 
puts "Creating scores..."

score1 = Score.create(score: 20, user_id: user1.id)
score2 = Score.create(score: 15, user_id: user2.id)
score3 = Score.create(score: 13, user_id: user2.id)
score4 = Score.create(score: 1, user_id: user1.id)
score5 = Score.create(score: 5, user_id: user2.id)
score6 = Score.create(score: 18, user_id: user1.id)

puts 
puts "Creating adventures..."


puts
puts "Done seeding!"

# puts 
# puts user1.adventures.map(&:adventure_summary)