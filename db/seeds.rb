puts "Cleaning database..."
User.destroy_all

lorem = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."

puts "Creating users..."
apu = User.create!(first_name: 'Apu', last_name: 'Nahasapeemapetilon', email: "a@a.a", password: "123456", gender: 'male', location: 'Montreal', running_exp: 'Beginner', bio: lorem, birth_date: (Date.current - (365 * 20)))
bob = User.create!(first_name: 'Bob', last_name: 'Smith', email: "b@b.b", password: "123456", gender: '', location: '', running_exp: 'Intermediate', bio: lorem, birth_date: (Date.current - (365 * 20)))
chung = User.create!(first_name: 'Chung', last_name: 'Wing', email: "c@c.c", password: "123456", gender: '', location: '', running_exp: 'Advanced', bio: lorem, birth_date: (Date.current - (365 * 20)))
