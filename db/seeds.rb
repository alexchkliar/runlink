require "open-uri"

sarah_bio = "Hey! My name’s Sarah I love running and meeting new people. Let’s connect and go for a run together <3"
john_bio = "Yoo! My name’s John I love partying. I get drunk a lot on the weekends so I figure I should run more. Let’s link up and go for a run then get drunk bro!"
bob_bio = "Hi I'm Bob. Uh.. I'm really weird and have no friends. I picked running as a hobby to be more social but I can't run."
danny_bio = "I'm 4'9 and not funny. Is this a dating app??"

puts "Cleaning database..."
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
Trail.destroy_all

puts "Creating users..."

file = URI.open('https://data.whicdn.com/images/339247802/original.jpg')
apu = User.new(first_name: 'Sarah', last_name: 'Runs', email: "a@a.a", password: "123456", gender: 'Female', location: 'Plateau Mont-Royal', running_exp: 'Beginner', bio: sarah_bio, birth_date: (Date.current - (365 * 20)))
apu.avatar.attach(io: file, filename: 'apu_avatar.jpg', content_type: 'image/jpg')
apu.save!

file = URI.open('https://i.kym-cdn.com/photos/images/newsfeed/001/374/185/fd4.png')
bob = User.new(first_name: 'Bob', last_name: 'Smith', email: "b@b.b", password: "123456", gender: 'Male', location: 'Plateau Mont-Royal', running_exp: 'Intermediate', bio: bob_bio, birth_date: (Date.current - (365 * 20)))
bob.avatar.attach(io: file, filename: 'bob_avatar.jpg', content_type: 'image/jpg')
bob.save!

file = URI.open('https://2.bp.blogspot.com/-n7J_nAA313c/WhwK_qVk_aI/AAAAAAAABZg/2GiiQJnHDxUE4zmWgfFTTrrdC9VeI-BtACLcBGAs/s1600/alphablackmen_2016-04-06_01-33-53.jpg')
chung = User.new(first_name: 'John', last_name: 'Chadson', email: "c@c.c", password: "123456", gender: 'Male', location: 'Plateau Mont-Royal', running_exp: 'Advanced', bio: john_bio, birth_date: (Date.current - (365 * 20)))
chung.avatar.attach(io: file, filename: 'chung_avatar.jpg', content_type: 'image/jpg')
chung.save!

file = URI.open('https://i.redd.it/irsptjj6e3i31.jpg')
chung = User.new(first_name: 'Danny', last_name: 'DeVito', email: "d@d.d", password: "123456", gender: 'Male', location: 'Philadelphia', running_exp: 'Beginner', bio: danny_bio, birth_date: (Date.current - (365 * 50)), xp: 20)
chung.avatar.attach(io: file, filename: 'danny_avatar.jpg', content_type: 'image/jpg')
chung.save!

puts "Creating trails..."

file = URI.open('http://site.ieee.org/pimrc-2017/files/2017/05/mount-royal-park-gomontrealtourism.com_.jpg')
plateau = Trail.new(name: "Awesome trail", location: 'Plateau Mont-Royal', distance: 5.23, user_id: apu.id, difficulty: 4)
plateau.photos.attach(io: file, filename: 'plateau_photo.jpg', content_type: 'image/jpg')
plateau.save!

file = URI.open('https://cdn.theculturetrip.com/wp-content/uploads/2020/03/g6cy3f-650x433.jpg')
vieux = Trail.new(name: "Amazing trail", location: 'Vieux-Port', distance: 44, user_id: apu.id, difficulty: 3)
vieux.photos.attach(io: file, filename: 'vieux_photo.jpg', content_type: 'image/jpg')
vieux.save!

file = URI.open('https://www.tripsavvy.com/thmb/SEUzsEb6kmZ83WC0a2tdAhvu2XU=/1589x1067/filters:no_upscale():max_bytes(150000):strip_icc()/montreal-chinatown-walking-tour-city-limits-friendship-arches-gates-george-rose-getty-589a305a3df78caebc5bd0ce.jpg')
chinatown = Trail.new(name: "Incredible trail", location: 'Chinatown', distance: 33, user_id: apu.id, difficulty: 2)
chinatown.photos.attach(io: file, filename: 'chinatown.jpg', content_type: 'image/jpg')
chinatown.save!

puts "Creating runs..."
run1 = Run.create!(trail_id: plateau.id, date: DateTime.current)

puts "Creating run participants..."

run1_participant1 = RunParticipant.create!(user_id: apu.id, run_id: run1.id, status: 1, creator: true)
run1_participant2 = RunParticipant.create!(user_id: bob.id, run_id: run1.id, status: 1, creator: false)
run1_participant3 = RunParticipant.create!(user_id: chung.id, run_id: run1.id, status: 1, creator: false)

puts "Creating chatrooms..."
chatroom_1 = Chatroom.create!(name: "general", user_id: apu.id, recipient_id: bob.id)

puts "Creating badges..."
badge1 = Badge.create!(name: "First Run", description: "Congratulations you have completed your first run!", req_xp: 1, logo: "https://img.icons8.com/ios-glyphs/50/4a90e2/pacifier.png")
badge2 = Badge.create!(name: "5k", description: "Congratulations you have completed your first 5k", req_xp: 5, logo: "https://img.icons8.com/ios-glyphs/30/4a90e2/baby-feet.png")
badge3 = Badge.create!(name: "10k", description: "Congratulations you have ran 10k", req_xp: 10, logo: "https://img.icons8.com/ios-glyphs/30/4a90e2/ios-10.png")
badge4 = Badge.create!(name: "20k", description: "Congratulations you have completed your first 20km", req_xp: 20, logo: "https://img.icons8.com/ios-filled/50/4a90e2/20.png")
badge5 = Badge.create!(name: "40k", description: "Great job! You have ran 40km!", req_xp: 40, logo: "https://img.icons8.com/ios-filled/50/4a90e2/40.png")
badge6 = Badge.create!(name: "80k", description: "Congratulations you ran 80km!", req_xp: 80, logo: "https://img.icons8.com/ios-filled/50/4a90e2/80.png")
badge7 = Badge.create!(name: "160k", description: "Congratulations you ran 160km!", req_xp: 160, logo: "https://img.icons8.com/material-outlined/50/4a90e2/paralympic-runner.png")
badge8 = Badge.create!(name: "320k", description: "Congratulations you ran 320km! Impressive.", req_xp: 320, logo: "https://img.icons8.com/ios-filled/50/4a90e2/greek-helmet.png")
badge9 = Badge.create!(name: "Daily Runner", description: "Wow you've ran 365km! That's 1k for every day of the year! Great work!", req_xp: 365, logo: "https://img.icons8.com/ios-filled/50/4a90e2/planner.png")
badge10 = Badge.create!(name: "640k", description: "Congratulations you ran 640km! Very impressive!", req_xp: 640, logo: "https://img.icons8.com/ios-glyphs/50/4a90e2/trophy.png")

puts "Done seeding"
