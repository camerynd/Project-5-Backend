puts "Deleting old data..."

User.destroy_all
Pet.destroy_all
Score.destroy_all
Adventure.destroy_all

puts
puts "Creating users..."

user1 = User.create(username: "gameguy2112", password: "gameguypassword", bio: "I'm a guy who games", avatar: "https://64.media.tumblr.com/5c5f0dcd5802e9e748b3cc12466c81c7/4c2d321573b3033d-11/s500x750/da231f861dacfc26d495df2c011968170af4f6ef.jpg")
user2 = User.create(username: "gamegirl2112", password: "gamegirlpassword", bio: "I am gamer girl", avatar: "https://64.media.tumblr.com/0ebfbae580d33d755f8b1accf55c2396/f6e8a39b47a9bcd5-09/s540x810/8e90668925ae3c4e66c66cc5ed9f506d3c8fa258.png")

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

adventure1 = Adventure.create(user_id: user1.id, choice_1: "example choice 1", choice_2: "example choice 2", choice_3: "example choice 3", choice_4: "example choice 4", choice_5: "example choice 5", adventure_status: true, last_words: '')
adventure2 = Adventure.create(user_id: user1.id, choice_1: "example choice 1", choice_2: "example choice 2", choice_3: "example choice 3", choice_4: "example choice 4", choice_5: "example choice 5", adventure_status: false, last_words: 'damng it')
adventure3 = Adventure.create(user_id: user2.id, choice_1: "example choice 1", choice_2: "example choice 2", choice_3: "example choice 3", choice_4: "example choice 4", choice_5: "example choice 5", adventure_status: true, last_words: '')

puts
puts "Done seeding!"

# puts 
# puts user1.adventures.map(&:adventure_summary)