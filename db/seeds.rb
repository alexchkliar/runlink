require "open-uri"

lorem = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."

puts "Cleaning database..."
User.destroy_all
Trail.destroy_all

puts "Creating users..."

file = URI.open('https://media.newyorker.com/photos/5a0dd9b7ae84d238abda66cb/2:2/w_898,h_898,c_limit/Hsu-Soft-Racism-of-Apu.jpg')
apu = User.new(first_name: 'Apu', last_name: 'Nahasapeemapetilon', email: "a@a.a", password: "123456", gender: 'Male', location: 'Plateau Mont-Royal', running_exp: 'Beginner', bio: lorem, birth_date: (Date.current - (365 * 20)))
apu.avatar.attach(io: file, filename: 'apu_avatar.jpg', content_type: 'image/jpg')
apu.save!

file = URI.open('https://gray-wect-prod.cdn.arcpublishing.com/resizer/kzbGJWyTP-lca92kPhGFaf9PdlY=/980x0/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/QP4FUAD5WBG4ROSL7ZE2XOOP4E.jpg')
bob = User.new(first_name: 'Bob', last_name: 'Smith', email: "b@b.b", password: "123456", gender: 'Male', location: 'Plateau Mont-Royal', running_exp: 'Intermediate', bio: lorem, birth_date: (Date.current - (365 * 20)))
bob.avatar.attach(io: file, filename: 'bob_avatar.jpg', content_type: 'image/jpg')
bob.save!

file = URI.open('https://biographymask.com/wp-content/uploads/2021/01/Hyun-Bin-actor.jpg')
chung = User.new(first_name: 'Chung', last_name: 'Wing', email: "c@c.c", password: "123456", gender: 'Male', location: 'Plateau Mont-Royal', running_exp: 'Advanced', bio: lorem, birth_date: (Date.current - (365 * 20)))
chung.avatar.attach(io: file, filename: 'chung_avatar.jpg', content_type: 'image/jpg')
chung.save!

puts "Creating trails..."

file = URI.open('http://site.ieee.org/pimrc-2017/files/2017/05/mount-royal-park-gomontrealtourism.com_.jpg')
plateau = Trail.new(name: "Awesome trail", location: 'Plateau Mont-Royal', distance: 55, rating: 3, user_id: apu.id, difficulty: 5)
plateau.photos.attach(io: file, filename: 'plateau_photo.jpg', content_type: 'image/jpg')
plateau.save!

file = URI.open('https://cdn.theculturetrip.com/wp-content/uploads/2020/03/g6cy3f-650x433.jpg')
vieux = Trail.new(name: "Amazing trail", location: 'Vieux-Port', distance: 44, rating: 2, user_id: apu.id, difficulty: 9)
vieux.photos.attach(io: file, filename: 'vieux_photo.jpg', content_type: 'image/jpg')
vieux.save!

file = URI.open('https://www.tripsavvy.com/thmb/SEUzsEb6kmZ83WC0a2tdAhvu2XU=/1589x1067/filters:no_upscale():max_bytes(150000):strip_icc()/montreal-chinatown-walking-tour-city-limits-friendship-arches-gates-george-rose-getty-589a305a3df78caebc5bd0ce.jpg')
chinatown = Trail.new(name: "Incredible trail", location: 'Chinatown', distance: 33, rating: 1, user_id: apu.id, difficulty: 10)
chinatown.photos.attach(io: file, filename: 'chinatown.jpg', content_type: 'image/jpg')
chinatown.save!

puts "Creating runs..."
run1 = Run.create!(trail_id: plateau.id, date: DateTime.current)

puts "Creating run participants..."
run1_participant1 = RunParticipant.new(user_id: apu.id, run_id: run1.id, status: 1, creator: true)
run1_participant2 = RunParticipant.new(user_id: bob.id, run_id: run1.id, status: 1, creator: false)
run1_participant3 = RunParticipant.new(user_id: chung.id, run_id: run1.id, status: 1, creator: false)

puts "Done seeding!"
