require "open-uri"

jessica_bio = "Hi! I usually run around 5 AM, but I know I'm not the only one!"
connor_bio = "Run often. Run long. But never outrun your joy of running."
lauren_bio = " Hey there, I'm Lauren! I thought I'd pick up running to during the pandemic to keep myself fit."
don_bio = "Love helping other runners stay consistent to reach their goals. Teamwork makes the dream work!"
issac_bio = "Running allows me to set my mind free. Nothing seems impossible. Dream big."
henry_bio = "Hi my name is Henry. I just move to Montreal from Hong Kong. I love to run and want to meet new people in this great city!"
emily_bio = "Hey I'm Emily I'm a health centre receptionist who enjoys listening to music and watch movies. I'm super energetic and love running."
raj_bio = "Hello I'm Raj. I just moved to Canada from India and hope to meet other fellow runners. Besides running, I love programming."
melissa_bio = "If you want to change your body, exercise. If you want to change your life, become a runner."
tina_bio = "Whatever challenge seems hard now will one day be your warm-up."

puts "Cleaning database..."
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
RunParticipant.destroy_all
Trail.destroy_all
Badge.destroy_all

puts "Creating users..."

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/jessica_j1q8sj.jpg')
jessica = User.new(first_name: 'Jessica', last_name: 'Simpson', email: "b@b.b", password: "123456",
                   location: 'Notre-Dame-de-Grâce', running_exp: 'Intermediate', bio: jessica_bio,
                   birth_date: Date.new(1983, 1, 1), xp: 70)
jessica.avatar.attach(io: file, filename: 'jessica_avatar.jpg', content_type: 'image/jpg')
jessica.save!

file = URI.open('https://media.istockphoto.com/photos/senior-black-man-exploring-picture-id1181252994?k=20&m=1181252994&s=612x612&w=0&h=oKzOxdMz9XGO0BawsGvzu4MZNda6U4o4ZryXaT1N4o8=')
connor = User.new(first_name: 'Connor', last_name: 'James', email: "c@c.c", password: "123456",
                  location: "Nun's Island", running_exp: 'Beginner', bio: connor_bio,
                  birth_date: Date.new(1958, 1, 1), xp: 6)
connor.avatar.attach(io: file, filename: 'connor_avatar.jpg', content_type: 'image/jpg')
connor.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/fatima_vounaa.jpg')
lauren = User.new(first_name: 'Lauren', last_name: 'Cohen', email: "d@d.d", password: "123456",
                  location: 'Plateau Mont-Royal', running_exp: 'Beginner', bio: lauren_bio,
                  birth_date: Date.new(1994, 1, 1), xp: 15)
lauren.avatar.attach(io: file, filename: 'lauren_avatar.jpg', content_type: 'image/jpg')
lauren.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/don_z0xhid.jpg')
don = User.new(first_name: 'Don', last_name: 'Smith', email: "a@a.a", password: "123456",
               location: 'Plateau Mont-Royal', running_exp: 'Advanced', bio: don_bio,
               birth_date: Date.new(1988, 1, 1), xp: 500)
don.avatar.attach(io: file, filename: 'don_avatar.jpg', content_type: 'image/jpg')
don.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462035/issac_ixokxj.jpg')
issac = User.new(first_name: 'Isaac', last_name: 'Asimov', email: "e@e.e", password: "123456",
                 location: 'Dollard-Des-Ormeaux', running_exp: 'Intermediate', bio: issac_bio,
                 birth_date: Date.new(1976, 1, 1), xp: 48)
issac.avatar.attach(io: file, filename: 'issac_avatar.jpg', content_type: 'image/jpg')
issac.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/chung_fatorj.jpg')
henry = User.new(first_name: 'Henry', last_name: 'Chung', email: "f@f.f", password: "123456",
                 location: 'Ville Saint-Laurent', running_exp: 'Beginner', bio: henry_bio,
                 birth_date: Date.new(1994, 1, 1), xp: 2)
henry.avatar.attach(io: file, filename: 'henry_avatar.jpg', content_type: 'image/jpg')
henry.save!

file = URI.open('https://post.healthline.com/wp-content/uploads/2020/08/Marathon_Women_running-732x549-thumbnail-732x549.jpg')
emily = User.new(first_name: 'Emily', last_name: 'Parker', email: "g@g.g", password: "123456",
                 location: 'Downtown', running_exp: 'Intermediate', bio: emily_bio,
                 birth_date: Date.new(1986, 1, 1), xp: 25)
emily.avatar.attach(io: file, filename: 'emily_avatar.jpg', content_type: 'image/jpg')
emily.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462036/raj_m3g93m.jpg')
raj = User.new(first_name: 'Raj', last_name: 'Koothrappali', email: "h@h.h", password: "123456",
               location: 'Longeuil', running_exp: 'Beginner', bio: raj_bio,
               birth_date: Date.new(1990, 1, 1), xp: 4)
raj.avatar.attach(io: file, filename: 'raj_avatar.jpg', content_type: 'image/jpg')
raj.save!

file = URI.open('https://media.istockphoto.com/photos/happy-millennial-girl-running-on-quay-and-listening-to-music-picture-id1160220628?k=20&m=1160220628&s=612x612&w=0&h=9fFkg_byCUBafA4lXvnoT3gAB_mwuvRQDC1Z8w_EpSo=')
melissa = User.new(first_name: 'Melissa', last_name: 'Leonard', email: "i@i.i", password: "123456",
                   location: 'Ville Saint-Laurent', running_exp: 'Beginner', bio: melissa_bio,
                   birth_date: Date.new(2003, 1, 1), xp: 5)
melissa.avatar.attach(io: file, filename: 'melissa_avatar.jpg', content_type: 'image/jpg')
melissa.save!

file = URI.open('https://res.cloudinary.com/davidshin0413/image/upload/v1638462035/tina_i2qegb.jpg')
tina = User.new(first_name: 'Tina', last_name: 'Turner', email: "j@j.j", password: "123456",
                location: 'Plateau Mont-Royal', running_exp: 'Beginner', bio: tina_bio,
                birth_date: Date.new(1978, 1, 1), xp: 35)
tina.avatar.attach(io: file, filename: 'tina_avatar.jpg', content_type: 'image/jpg')
tina.save!

puts "Creating trails..."

montroyal = Trail.new(name: "Mount Royal Park Loop", location: 'Mount Royal Park', distance: 8.4, user_id: jessica.id, difficulty: 4, trail_img_url: "https://res.cloudinary.com/davidshin0413/image/upload/v1638221914/Screenshot_from_2021-11-29_16-20-33_y7knd0.png", description: "Mount Royal Park Loop is a 8.4 kilometer heavily trafficked loop trail that features a lake and is good for all skill levels. The trail offers a number of activity options and is accessible year-round.")
file = URI.open('http://site.ieee.org/pimrc-2017/files/2017/05/mount-royal-park-gomontrealtourism.com_.jpg')
montroyal.photos.attach(io: file, filename: 'mount_royal_park_loop_photo.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/42408073/extra_large_40ea1b12fb757665b620ea5d620d6568.jpg')
montroyal.photos.attach(io: file, filename: 'mount_royal_park_loop_photo2.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn.shopify.com/s/files/1/0897/1620/articles/SS20_Horizon_ForestFemmes-_62_-2100_2100x.jpg?v=1588617775')
montroyal.photos.attach(io: file, filename: 'mount_royal_park_loop_photo3.jpg', content_type: 'image/jpg')
montroyal.save!

westmount = Trail.new(name: "Westmount Loop", location: 'Westmount', distance: 3.1, user_id: jessica.id, difficulty: 3, trail_img_url: "https://res.cloudinary.com/davidshin0413/image/upload/v1638222561/Screenshot_from_2021-11-29_16-22-55_mm2yf9.png", description: "Westmount Loop is a 3.1 kilometer lightly trafficked loop trail that offers the chance to see wildlife and is good for all skill levels. The trail is primarily used for hiking, walking, running, and nature trips.")
file = URI.open('https://westmount.org/wp-content/uploads/2015/10/dog_walk_web.jpg')
westmount.photos.attach(io: file, filename: 'west_mount_photo.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/30825090/extra_large_38df8ca4c6247b2175b1c0d61a414d8d.jpg')
westmount.photos.attach(io: file, filename: 'west_mount_photo2.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/38939226/extra_large_c8bc971f802b3601ca17471da8cb6eb4.jpg')
westmount.photos.attach(io: file, filename: 'west_mount_photo3.jpg', content_type: 'image/jpg')
westmount.save!

lachinecanal = Trail.new(name: "Lachine Canal Multipurpose Path", location: 'Lachine', distance: 6.6, user_id: jessica.id, difficulty: 2, trail_img_url: "https://res.cloudinary.com/davidshin0413/image/upload/v1638222834/image_hyaode.png", description: "Lachine Canal Multipurpose Path is a 6.6 kilometer heavily trafficked loop trail that features a river. The trail is good for all skill levels and offers a number of activity options.")
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/41540348/extra_large_19a3cbf151fd08e2783102106f47ff84.jpg')
lachinecanal.photos.attach(io: file, filename: 'lachine_canal_photo.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn-assets.alltrails.com/uploads/photo/image/37401465/extra_large_d717141299fe5b57b686a0de153fedf3.jpg')
lachinecanal.photos.attach(io: file, filename: 'lachine_canal_photo2.jpg', content_type: 'image/jpg')
file = URI.open('https://cdn.theculturetrip.com/wp-content/uploads/2020/03/g6cy3f-650x433.jpg')
lachinecanal.photos.attach(io: file, filename: 'lachine_canal_photo3.jpg', content_type: 'image/jpg')
lachinecanal.save!

puts "Creating runs..."
run1 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,11,10,0,0))
run2 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,12,10,0,0))
run3 = Run.create!(trail_id: lachinecanal.id, date: DateTime.new(2021,11,13,10,0,0))
run4 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,14,10,0,0))
run5 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,15,10,0,0))
run6 = Run.create!(trail_id: lachinecanal.id, date: DateTime.new(2021,11,16,10,0,0))
run7 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,17,10,0,0))
run8 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,18,10,0,0))
run9 = Run.create!(trail_id: lachinecanal.id, date: DateTime.new(2021,11,19,10,0,0))
run10 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,20,10,0,0))
run11 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,21,10,0,0))
run12 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,22,10,0,0))
run13 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,23,10,0,0))
run14 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,24,10,0,0))
run15 = Run.create!(trail_id: lachinecanal.id, date: DateTime.new(2021,11,25,10,0,0))
run16 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,26,10,0,0))
run17 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,27,10,0,0))
run18 = Run.create!(trail_id: lachinecanal.id, date: DateTime.new(2021,11,28,10,0,0))
run19 = Run.create!(trail_id: montroyal.id, date: DateTime.new(2021,11,29,10,0,0))
run20 = Run.create!(trail_id: westmount.id, date: DateTime.new(2021,11,30,10,0,0))

puts "Creating run participants..."
run1_participant1 = RunParticipant.create!(user_id: don.id, run_id: run1.id, status: 1, creator: true, distance: 5.5)
run1_participant2 = RunParticipant.create!(user_id: lauren.id, run_id: run1.id, status: 1, creator: false)

run2_participant1 = RunParticipant.create!(user_id: jessica.id, run_id: run2.id, status: 1, creator: true)
run2_participant2 = RunParticipant.create!(user_id: issac.id, run_id: run2.id, status: 1, creator: false)

run3_participant1 = RunParticipant.create!(user_id: melissa.id, run_id: run3.id, status: 1, creator: true)
run3_participant2 = RunParticipant.create!(user_id: henry.id, run_id: run3.id, status: 1, creator: false)

run4_participant1 = RunParticipant.create!(user_id: don.id, run_id: run4.id, status: 1, creator: true, distance: 2.8)
run4_participant2 = RunParticipant.create!(user_id: raj.id, run_id: run4.id, status: 1, creator: false)

run5_participant1 = RunParticipant.create!(user_id: connor.id, run_id: run5.id, status: 1, creator: true)
run5_participant2 = RunParticipant.create!(user_id: tina.id, run_id: run5.id, status: 1, creator: false)

run6_participant1 = RunParticipant.create!(user_id: don.id, run_id: run6.id, status: 1, creator: true, distance: 4.3)
run6_participant2 = RunParticipant.create!(user_id: connor.id, run_id: run6.id, status: 1, creator: false)

run7_participant1 = RunParticipant.create!(user_id: don.id, run_id: run7.id, status: 1, creator: true, distance: 2.9)
run7_participant2 = RunParticipant.create!(user_id: henry.id, run_id: run7.id, status: 1, creator: false)

run8_participant1 = RunParticipant.create!(user_id: don.id, run_id: run8.id, status: 1, creator: true, distance: 7.1)
run8_participant2 = RunParticipant.create!(user_id: jessica.id, run_id: run8.id, status: 1, creator: false)

run9_participant1 = RunParticipant.create!(user_id: don.id, run_id: run9.id, status: 1, creator: true, distance: 5.8)
run9_participant2 = RunParticipant.create!(user_id: issac.id, run_id: run9.id, status: 1, creator: false)

run10_participant1 = RunParticipant.create!(user_id: don.id, run_id: run10.id, status: 1, creator: true, distance: 5.8)
run10_participant2 = RunParticipant.create!(user_id: connor.id, run_id: run10.id, status: 1, creator: false)

run11_participant1 = RunParticipant.create!(user_id: don.id, run_id: run11.id, status: 1, creator: true, distance: 10.1)
run11_participant2 = RunParticipant.create!(user_id: melissa.id, run_id: run11.id, status: 1, creator: false)

run12_participant1 = RunParticipant.create!(user_id: don.id, run_id: run12.id, status: 1, creator: true, distance: 8.1)
run12_participant2 = RunParticipant.create!(user_id: tina.id, run_id: run12.id, status: 1, creator: false)

run13_participant1 = RunParticipant.create!(user_id: don.id, run_id: run13.id, status: 1, creator: true, distance: 2.9)
run13_participant2 = RunParticipant.create!(user_id: melissa.id, run_id: run13.id, status: 1, creator: false)

run14_participant1 = RunParticipant.create!(user_id: don.id, run_id: run14.id, status: 1, creator: true, distance: 7.5)
run14_participant2 = RunParticipant.create!(user_id: lauren.id, run_id: run14.id, status: 1, creator: false)

run15_participant1 = RunParticipant.create!(user_id: don.id, run_id: run15.id, status: 1, creator: true, distance: 8.9)
run15_participant2 = RunParticipant.create!(user_id: jessica.id, run_id: run15.id, status: 1, creator: false)

puts "Creating badges..."
badge1 = Badge.create!(name: "Newbie", description: "Completed first run.", req_xp: 1, logo: "fas fa-baby") # baby
badge2 = Badge.create!(name: "10k", description: "Ran 10km to date.", req_xp: 10, logo: "fas fa-shoe-prints") # shoe print
badge3 = Badge.create!(name: "Cardio", description: "Ran 20km to date.", req_xp: 20, logo: "fas fa-heart") # heart
badge4 = Badge.create!(name: "Endurance", description: "Completed 5 uphill runs of at least 1km each.", req_xp: 20, logo: "fas fa-dumbbell") # dumbbell
badge5 = Badge.create!(name: "Social", description: "Connected with 100 fellow runners.", req_xp: 25, logo: "fas fa-handshake") # handshake
badge6 = Badge.create!(name: "Team spirit", description: "Received 100 thumbs-up.", req_xp: 50, logo: "fas fa-thumbs-up") # thumbs-up
badge7 = Badge.create!(name: "Lightning", description: "Ran 5km in less than 20 minutes.", req_xp: 100, logo: "fas fa-bolt") # bolt
badge8 = Badge.create!(name: "Avid runner", description: "Participated in 50 runs.", req_xp: 250, logo: "fas fa-running") # runner
badge9 = Badge.create!(name: "Master of persistence", description: "Ran at least 1km per day for a full year.", req_xp: 365, logo: "fas fa-calendar-week") # agenda
badge10 = Badge.create!(name: "Legend", description: "Ran 500km to date.", req_xp: 500, logo: "fas fa-star") # star

puts "Creating user ratings..."
user_rating1 = UserRating.create!(rater_id: jessica.id, ratee_id: don.id, thumbs_up: true)
user_rating2 = UserRating.create!(rater_id: melissa.id, ratee_id: don.id, thumbs_up: true)
user_rating3 = UserRating.create!(rater_id: lauren.id, ratee_id: don.id, thumbs_up: true)
user_rating4 = UserRating.create!(rater_id: connor.id, ratee_id: don.id, thumbs_up: true)
user_rating5 = UserRating.create!(rater_id: issac.id, ratee_id: don.id, thumbs_up: true)
user_rating6 = UserRating.create!(rater_id: tina.id, ratee_id: don.id, thumbs_up: true)
user_rating7 = UserRating.create!(rater_id: henry.id, ratee_id: don.id, thumbs_up: true)
user_rating8 = UserRating.create!(rater_id: melissa.id, ratee_id: don.id, thumbs_up: true)
user_rating9 = UserRating.create!(rater_id: raj.id, ratee_id: don.id, thumbs_up: true)
user_rating10 = UserRating.create!(rater_id: jessica.id, ratee_id: don.id, thumbs_up: true)

puts "Done seeding"
