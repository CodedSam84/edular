puts "Destroying records...."

Course.destroy_all

puts "Creating records...."

User.create!(
  email:"sammy@yahoo.com",
  password: "123456",
  password_confirmation: "123456"
)

30.times do
	Course.create!(
	  title: Faker::Educator.course_name,
	  description: Faker::Quote.famous_last_words,
	  user_id: User.first.id 
    )
end

puts "Records successfully created!"
