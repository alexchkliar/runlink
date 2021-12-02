require "open-uri"


chung_bio = "Hi my name is Chung. I just move to Montreal from Hong Kong I love to run and want to meet new people in city! Sorry my english not good."
don_bio = "Yoyo it's ya boy Don. Love helping other runners stay consitent to reach their goals. Teamwork makes the dream work baby!"
emily_bio = "Hey I'm Emily I'm a health centre receptionist who enjoys listening to music, watching YouTube videos and extreme ironing. I'm super energetic and love running."
fatima_bio = " Hey hey I'm Fatima. I'm a 23-year-old kitchen assistant who enjoys adult colouring book, thought I'd pick up running to during the pandmic to keep myself fit!"
issac_bio = "Running allows me to set my mind free. Nothing seems impossible. Nothing unattainable"
jessica_bio = "I run because I can. When I get tired, I remember those who can't run, what they would give to have this simple gift I take for granted, and I run harder for them. I know they would do the same for me."
raj_bio = "Hello I'm Raj. I just moved from India. I love programming I hope to someday work at Google. I run sometimes..."
shawnty_bio = "Run often. Run long. But never outrun your joy of running."
tina_bio = "What seems hard now will one day be your warm-up."
tyrone_bio = "If you want to change your body, exercise. If you want to change your life, become a runner."

puts "Cleaning database..."
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
RunParticipant.destroy_all
Trail.destroy_all

puts "Creating users..."

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/chung_fatorj.jpg')
chung = User.new(first_name: 'Chung', last_name: 'Ma', email: "a@a.a", password: "123456", location: 'Plateau Mont-Royal', running_exp: 'Beginner', bio: chung_bio, birth_date: (Date.current - (365 * 20)), xp: 5)
chung.avatar.attach(io: file, filename: 'chung_avatar.jpg', content_type: 'image/jpg')
chung.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/don_z0xhid.jpg')
don = User.new(first_name: 'Don', last_name: 'Smith', email: "b@b.b", password: "123456", location: 'Plateau Mont-Royal', running_exp: 'Intermediate', bio: don_bio, birth_date: (Date.current - (365 * 20)), xp: 10)
don.avatar.attach(io: file, filename: 'don_avatar.jpg', content_type: 'image/jpg')
don.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462035/emily_cgy5ht.jpg')
emily = User.new(first_name: 'Emily', last_name: 'Chadson', email: "c@c.c", password: "123456", location: 'Plateau Mont-Royal', running_exp: 'Advanced', bio: emily_bio, birth_date: (Date.current - (365 * 20)), xp: 1000)
emily.avatar.attach(io: file, filename: 'emily_avatar.jpg', content_type: 'image/jpg')
emily.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/fatima_vounaa.jpg')
fatima = User.new(first_name: 'Fatima', last_name: 'DeVito', email: "d@d.d", password: "123456", location: 'Philadelphia', running_exp: 'Beginner', bio: fatima_bio, birth_date: (Date.current - (365 * 50)), xp: 20)
fatima.avatar.attach(io: file, filename: 'fatima_avatar.jpg', content_type: 'image/jpg')
fatima.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462035/issac_ixokxj.jpg')
issac = User.new(first_name: 'Issac', last_name: 'DeVito', email: "e@e.e", password: "123456", location: 'Philadelphia', running_exp: 'Beginner', bio: issac_bio, birth_date: (Date.current - (365 * 50)), xp: 20)
issac.avatar.attach(io: file, filename: 'issac_avatar.jpg', content_type: 'image/jpg')
issac.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/jessica_j1q8sj.jpg')
jessica = User.new(first_name: 'Jessica', last_name: 'DeVito', email: "f@f.f", password: "123456", location: 'Philadelphia', running_exp: 'Beginner', bio: jessica_bio, birth_date: (Date.current - (365 * 50)), xp: 20)
jessica.avatar.attach(io: file, filename: 'jessica_avatar.jpg', content_type: 'image/jpg')
jessica.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/raj_m3g93m.jpg')
raj = User.new(first_name: 'Raj', last_name: 'DeVito', email: "g@g.g", password: "123456", location: 'Philadelphia', running_exp: 'Beginner', bio: raj_bio, birth_date: (Date.current - (365 * 50)), xp: 20)
raj.avatar.attach(io: file, filename: 'raj_avatar.jpg', content_type: 'image/jpg')
raj.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462035/shawnty_aemihc.jpg')
shawnty = User.new(first_name: 'Shawnty', last_name: 'DeVito', email: "h@h.h", password: "123456", location: 'Philadelphia', running_exp: 'Beginner', bio: shawnty_bio, birth_date: (Date.current - (365 * 50)), xp: 20)
shawnty.avatar.attach(io: file, filename: 'shawnty_avatar.jpg', content_type: 'image/jpg')
shawnty.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462035/tina_i2qegb.jpg')
tina = User.new(first_name: 'Tina', last_name: 'DeVito', email: "i@i.i", password: "123456", location: 'Philadelphia', running_exp: 'Beginner', bio: tina_bio, birth_date: (Date.current - (365 * 50)), xp: 20)
tina.avatar.attach(io: file, filename: 'tina_avatar.jpg', content_type: 'image/jpg')
tina.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462915/tyrone_muympy.jpg')
tyrone = User.new(first_name: 'Tyrone', last_name: 'DeVito', email: "j@j.j", password: "123456", location: 'Philadelphia', running_exp: 'Beginner', bio: tyrone_bio, birth_date: (Date.current - (365 * 50)), xp: 20)
tyrone.avatar.attach(io: file, filename: 'tyrone_avatar.jpg', content_type: 'image/jpg')
tyrone.save!

puts "Creating trails..."

montroyal = Trail.new(name: "Mount Royal Park Loop", location: 'Mount Royal Park', distance: 8.4, user_id: chung.id, difficulty: 4, trail_img_url: "https://res.cloudinary.com/davidshin0413/image/upload/v1638221914/Screenshot_from_2021-11-29_16-20-33_y7knd0.png", description: "Mount Royal Park Loop is a 8.4 kilometer heavily trafficked loop trail that features a lake and is good for all skill levels. The trail offers a number of activity options and is accessible year-round.")
file = URI.open('http://site.ieee.org/pimrc-2017/files/2017/05/mount-royal-park-gomontrealtourism.com_.jpg')
montroyal.photos.attach(io: file, filename: 'mount_royal_park_loop_photo.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/42408073/extra_large_40ea1b12fb757665b620ea5d620d6568.jpg')
montroyal.photos.attach(io: file, filename: 'mount_royal_park_loop_photo2.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn.shopify.com/s/files/1/0897/1620/articles/SS20_Horizon_ForestFemmes-_62_-2100_2100x.jpg?v=1588617775')
montroyal.photos.attach(io: file, filename: 'mount_royal_park_loop_photo3.jpg', content_type: 'image/jpg')
montroyal.save!
puts "Mount Royal saved..."

westmount = Trail.new(name: "Westmount Loop", location: 'Westmount', distance: 3.1, user_id: chung.id, difficulty: 3, trail_img_url: "https://res.cloudinary.com/davidshin0413/image/upload/v1638222561/Screenshot_from_2021-11-29_16-22-55_mm2yf9.png", description: "Westmount Loop is a 3.1 kilometer lightly trafficked loop trail that offers the chance to see wildlife and is good for all skill levels. The trail is primarily used for hiking, walking, running, and nature trips.")
file = URI.open('https://westmount.org/wp-content/uploads/2015/10/dog_walk_web.jpg')
westmount.photos.attach(io: file, filename: 'west_mount_photo.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/30825090/extra_large_38df8ca4c6247b2175b1c0d61a414d8d.jpg')
westmount.photos.attach(io: file, filename: 'west_mount_photo2.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/38939226/extra_large_c8bc971f802b3601ca17471da8cb6eb4.jpg')
westmount.photos.attach(io: file, filename: 'west_mount_photo3.jpg', content_type: 'image/jpg')
westmount.save!
puts "Westmount saved..."

lachinecanal = Trail.new(name: "Lachine Canal Multipurpose Path", location: 'Lachine', distance: 6.6, user_id: chung.id, difficulty: 2, trail_img_url: "https://res.cloudinary.com/davidshin0413/image/upload/v1638222834/image_hyaode.png", description: "Lachine Canal Multipurpose Path is a 6.6 kilometer heavily trafficked loop trail that features a river. The trail is good for all skill levels and offers a number of activity options.")
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/41540348/extra_large_19a3cbf151fd08e2783102106f47ff84.jpg')
lachinecanal.photos.attach(io: file, filename: 'lachine_canal_photo.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/37401465/extra_large_d717141299fe5b57b686a0de153fedf3.jpg')
lachinecanal.photos.attach(io: file, filename: 'lachine_canal_photo2.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn.theculturetrip.com/wp-content/uploads/2020/03/g6cy3f-650x433.jpg')
lachinecanal.photos.attach(io: file, filename: 'lachine_canal_photo3.jpg', content_type: 'image/jpg')
lachinecanal.save!
puts "Lachine Canal saved..."

puts "Creating runs..."
run1 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,4,10,0,0))
run2 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,8,10,0,0))
run3 = Run.create!(trail_id: lachinecanal.id, date: DateTime.new(2021,11,27,10,0,0))
run4 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,16,10,0,0))
run5 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,20,10,0,0))

puts "Creating run participants..."

run1_participant1 = RunParticipant.create!(user_id: chung.id, run_id: run1.id, status: 1, creator: true)
run1_participant2 = RunParticipant.create!(user_id: don.id, run_id: run1.id, status: 1, creator: false)
run1_participant3 = RunParticipant.create!(user_id: emily.id, run_id: run1.id, status: 1, creator: false)
run1_participant4 = RunParticipant.create!(user_id: emily.id, run_id: run1.id, status: 1, creator: false)
run1_participant5 = RunParticipant.create!(user_id: emily.id, run_id: run1.id, status: 1, creator: false)

run1_participant6 = RunParticipant.create!(user_id: chung.id, run_id: run2.id, status: 1, creator: true)
run1_participant7 = RunParticipant.create!(user_id: chung.id, run_id: run3.id, status: 1, creator: true)
run1_participant8 = RunParticipant.create!(user_id: chung.id, run_id: run4.id, status: 1, creator: true)
run1_participant9 = RunParticipant.create!(user_id: chung.id, run_id: run5.id, status: 1, creator: true)

puts "Creating chatrooms..."
chatroom_1 = Chatroom.create!(name: "general", user_id: chung.id, recipient_id: don.id)

puts "Creating badges..."
badge1 = Badge.create!(name: "Newbie", description: "Completed first run.", req_xp: 1, logo: "fas fa-baby") # baby
badge2 = Badge.create!(name: "10k", description: "Ran 10km to date.", req_xp: 10, logo: "fas fa-shoe-prints") # shoe print
badge3 = Badge.create!(name: "Cardio", description: "Ran 10km in a single run.", req_xp: 20, logo: "fas fa-heart") # heart
# badge4 = Badge.create!(name: "Endurance", description: "Completed 5 uphill runs of at least 1km each.", req_xp: 20, logo: "fas fa-dumbbell") # dumbbell
badge5 = Badge.create!(name: "Social", description: "Connected with 100 fellow runners.", req_xp: 25, logo: "fas fa-handshake") # handshake
badge6 = Badge.create!(name: "Team spirit", description: "Received 100 thumbs-up.", req_xp: 50, logo: "fas fa-thumbs-up") # thumbs-up
badge7 = Badge.create!(name: "Lightning", description: "Ran 5km in less than 20 minutes.", req_xp: 100, logo: "fas fa-bolt") # bolt
badge8 = Badge.create!(name: "Avid runner", description: "Participated in 50 runs.", req_xp: 250, logo: "fas fa-running") # runner
badge9 = Badge.create!(name: "Master of persistence", description: "Ran at least 1km per day for a full year.", req_xp: 365, logo: "fas fa-calendar-week") # agenda
badge10 = Badge.create!(name: "Legend", description: "Ran 500km to date.", req_xp: 500, logo: "fas fa-star") # star

puts "Done seeding"
