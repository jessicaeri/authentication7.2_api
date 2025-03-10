require 'faker'

#5 teachers
5.times do
  User.create(
    name: Faker::Name.name,
    
  )

#5 students 
Faker::Name.first_name
Faker::Name.last_name


#20 courses 
Faker::Educator.course_name
