require "open-uri"

sarah_bio = "Lorem impsum impsum impsum impsum impsum impsum impsum impsum impsum impsum"
john_bio = "Lorem impsum impsum impsum impsum impsum impsum impsum impsum impsum impsum"
bob_bio = "Lorem impsum impsum impsum impsum impsum impsum impsum impsum impsum impsum"
danny_bio = "Lorem impsum impsum impsum impsum impsum impsum impsum impsum impsum impsum"

puts "Cleaning database..."
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
RunParticipant.destroy_all
Trail.destroy_all

puts "Creating users..."

file = URI.open('https://data.whicdn.com/images/339247802/original.jpg')
apu = User.new(first_name: 'Sarah', last_name: 'Runs', email: "a@a.a", password: "123456", gender: 'Female', location: 'Plateau Mont-Royal', running_exp: 'Beginner', bio: sarah_bio, birth_date: (Date.current - (365 * 20)), xp: 5)
apu.avatar.attach(io: file, filename: 'apu_avatar.jpg', content_type: 'image/jpg')
apu.save!

file = URI.open('https://i.kym-cdn.com/photos/images/newsfeed/001/374/185/fd4.png')
bob = User.new(first_name: 'Bob', last_name: 'Smith', email: "b@b.b", password: "123456", gender: 'Male', location: 'Plateau Mont-Royal', running_exp: 'Intermediate', bio: bob_bio, birth_date: (Date.current - (365 * 20)), xp: 10)
bob.avatar.attach(io: file, filename: 'bob_avatar.jpg', content_type: 'image/jpg')
bob.save!

file = URI.open('https://2.bp.blogspot.com/-n7J_nAA313c/WhwK_qVk_aI/AAAAAAAABZg/2GiiQJnHDxUE4zmWgfFTTrrdC9VeI-BtACLcBGAs/s1600/alphablackmen_2016-04-06_01-33-53.jpg')
chung = User.new(first_name: 'John', last_name: 'Chadson', email: "c@c.c", password: "123456", gender: 'Male', location: 'Plateau Mont-Royal', running_exp: 'Advanced', bio: john_bio, birth_date: (Date.current - (365 * 20)), xp: 1000)
chung.avatar.attach(io: file, filename: 'chung_avatar.jpg', content_type: 'image/jpg')
chung.save!

file = URI.open('https://i.redd.it/irsptjj6e3i31.jpg')
danny = User.new(first_name: 'Danny', last_name: 'DeVito', email: "d@d.d", password: "123456", gender: 'Male', location: 'Philadelphia', running_exp: 'Beginner', bio: danny_bio, birth_date: (Date.current - (365 * 50)), xp: 20)
danny.avatar.attach(io: file, filename: 'danny_avatar.jpg', content_type: 'image/jpg')
danny.save!

puts "Creating trails..."

montroyal = Trail.new(name: "Mount Royal Park Loop", location: 'Mount Royal Park', distance: 8.4, user_id: apu.id, difficulty: 4, trail_img_url: "https://res.cloudinary.com/davidshin0413/image/upload/v1638221914/Screenshot_from_2021-11-29_16-20-33_y7knd0.png", description: "Mount Royal Park Loop is a 8.4 kilometer heavily trafficked loop trail that features a lake and is good for all skill levels. The trail offers a number of activity options and is accessible year-round.")
file = URI.open('http://site.ieee.org/pimrc-2017/files/2017/05/mount-royal-park-gomontrealtourism.com_.jpg')
montroyal.photos.attach(io: file, filename: 'mount_royal_park_loop_photo.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/42408073/extra_large_40ea1b12fb757665b620ea5d620d6568.jpg')
montroyal.photos.attach(io: file, filename: 'mount_royal_park_loop_photo2.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn.shopify.com/s/files/1/0897/1620/articles/SS20_Horizon_ForestFemmes-_62_-2100_2100x.jpg?v=1588617775')
montroyal.photos.attach(io: file, filename: 'mount_royal_park_loop_photo3.jpg', content_type: 'image/jpg')
montroyal.save!

westmount = Trail.new(name: "Westmount Loop", location: 'Westmount', distance: 3.1, user_id: apu.id, difficulty: 3, trail_img_url: "https://res.cloudinary.com/davidshin0413/image/upload/v1638222561/Screenshot_from_2021-11-29_16-22-55_mm2yf9.png", description: "Westmount Loop is a 3.1 kilometer lightly trafficked loop trail that offers the chance to see wildlife and is good for all skill levels. The trail is primarily used for hiking, walking, running, and nature trips.")
file = URI.open('https://westmount.org/wp-content/uploads/2015/10/dog_walk_web.jpg')
westmount.photos.attach(io: file, filename: 'west_mount_photo.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/30825090/extra_large_38df8ca4c6247b2175b1c0d61a414d8d.jpg')
westmount.photos.attach(io: file, filename: 'west_mount_photo2.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/38939226/extra_large_c8bc971f802b3601ca17471da8cb6eb4.jpg')
westmount.photos.attach(io: file, filename: 'west_mount_photo3.jpg', content_type: 'image/jpg')
westmount.save!

lachinecanal = Trail.new(name: "Lachine Canal Multipurpose Path", location: 'Lachine', distance: 6.6, user_id: apu.id, difficulty: 2, trail_img_url: "https://res.cloudinary.com/davidshin0413/image/upload/v1638222834/image_hyaode.png", description: "Lachine Canal Multipurpose Path is a 6.6 kilometer heavily trafficked loop trail that features a river. The trail is good for all skill levels and offers a number of activity options.")
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/41540348/extra_large_19a3cbf151fd08e2783102106f47ff84.jpg')
lachinecanal.photos.attach(io: file, filename: 'lachine_canal_photo.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/37401465/extra_large_d717141299fe5b57b686a0de153fedf3.jpg')
lachinecanal.photos.attach(io: file, filename: 'lachine_canal_photo2.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn.theculturetrip.com/wp-content/uploads/2020/03/g6cy3f-650x433.jpg')
lachinecanal.photos.attach(io: file, filename: 'lachine_canal_photo3.jpg', content_type: 'image/jpg')
lachinecanal.save!

puts "Creating runs..."
run1 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,25,10,0,0))
run2 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,26,10,0,0))
run3 = Run.create!(trail_id: lachinecanal.id, date: DateTime.new(2021,11,27,10,0,0))
run4 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,28,10,0,0))
run5 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,29,10,0,0))

puts "Creating run participants..."

run1_participant1 = RunParticipant.create!(user_id: apu.id, run_id: run1.id, status: 1, creator: true)
run1_participant2 = RunParticipant.create!(user_id: bob.id, run_id: run1.id, status: 1, creator: false)
run1_participant3 = RunParticipant.create!(user_id: chung.id, run_id: run1.id, status: 1, creator: false)

puts "Creating chatrooms..."
chatroom_1 = Chatroom.create!(name: "general", user_id: apu.id, recipient_id: bob.id)

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
