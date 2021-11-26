require "open-uri"

sarah_bio = "Hey! My name’s Sarah I love running and meeting new people. Let’s connect and go for a run together <3"
john_bio = "Yoo! My name’s John I love partying. I get drunk a lot on the weekends so I figure I should run more. Let’s link up and go for a run then get drunk bro!"
bob_bio = "Hi I'm Bob. Uh.. I'm really weird and have no friends. I picked running as a hobby to be more social but I can't run."

puts "Cleaning database..."
User.destroy_all
Trail.destroy_all

puts "Creating users..."

file = URI.open('https://data.whicdn.com/images/339247802/original.jpg')
apu = User.new(first_name: 'Sarah', last_name: 'Van Sugardaddy', email: "a@a.a", password: "123456", gender: 'Female', location: 'Plateau Mont-Royal', running_exp: 'Beginner', bio: sarah_bio, birth_date: (Date.current - (365 * 20)))
apu.avatar.attach(io: file, filename: 'apu_avatar.jpg', content_type: 'image/jpg')
apu.save!

file = URI.open('https://i.kym-cdn.com/photos/images/newsfeed/001/374/185/fd4.png')
bob = User.new(first_name: 'Bob', last_name: 'Dickson', email: "b@b.b", password: "123456", gender: 'Male', location: 'Plateau Mont-Royal', running_exp: 'Intermediate', bio: bob_bio, birth_date: (Date.current - (365 * 20)))
bob.avatar.attach(io: file, filename: 'bob_avatar.jpg', content_type: 'image/jpg')
bob.save!

file = URI.open('https://2.bp.blogspot.com/-n7J_nAA313c/WhwK_qVk_aI/AAAAAAAABZg/2GiiQJnHDxUE4zmWgfFTTrrdC9VeI-BtACLcBGAs/s1600/alphablackmen_2016-04-06_01-33-53.jpg')
chung = User.new(first_name: 'John', last_name: 'Chadson', email: "c@c.c", password: "123456", gender: 'Male', location: 'Plateau Mont-Royal', running_exp: 'Advanced', bio: john_bio, birth_date: (Date.current - (365 * 20)))
chung.avatar.attach(io: file, filename: 'chung_avatar.jpg', content_type: 'image/jpg')
chung.save!

puts "Creating trails..."

file = URI.open('http://site.ieee.org/pimrc-2017/files/2017/05/mount-royal-park-gomontrealtourism.com_.jpg')
plateau = Trail.new(name: "Awesome trail", location: 'Plateau Mont-Royal', distance: 5.23, rating: 3, user_id: apu.id, difficulty: 4)
plateau.photos.attach(io: file, filename: 'plateau_photo.jpg', content_type: 'image/jpg')
plateau.save!

file = URI.open('https://cdn.theculturetrip.com/wp-content/uploads/2020/03/g6cy3f-650x433.jpg')
vieux = Trail.new(name: "Amazing trail", location: 'Vieux-Port', distance: 44, rating: 2, user_id: apu.id, difficulty: 3)
vieux.photos.attach(io: file, filename: 'vieux_photo.jpg', content_type: 'image/jpg')
vieux.save!

file = URI.open('https://www.tripsavvy.com/thmb/SEUzsEb6kmZ83WC0a2tdAhvu2XU=/1589x1067/filters:no_upscale():max_bytes(150000):strip_icc()/montreal-chinatown-walking-tour-city-limits-friendship-arches-gates-george-rose-getty-589a305a3df78caebc5bd0ce.jpg')
chinatown = Trail.new(name: "Incredible trail", location: 'Chinatown', distance: 33, rating: 1, user_id: apu.id, difficulty: 2)
chinatown.photos.attach(io: file, filename: 'chinatown.jpg', content_type: 'image/jpg')
chinatown.save!

puts "Creating runs..."
run1 = Run.create!(trail_id: plateau.id, date: DateTime.current)

puts "Creating run participants..."

run1_participant1 = RunParticipant.create!(user_id: apu.id, run_id: run1.id, status: 1, creator: true)
run1_participant2 = RunParticipant.create!(user_id: bob.id, run_id: run1.id, status: 1, creator: false)
run1_participant3 = RunParticipant.create!(user_id: chung.id, run_id: run1.id, status: 1, creator: false)

puts "Creating chatrooms..."
chatroom_1 = Chatroom.new(name: "general", user_id: apu.id, recipient_id: bob.id)
chatroom_1.save!

puts "Done seeding"
