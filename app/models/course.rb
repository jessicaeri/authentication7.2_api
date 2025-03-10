class Course < ApplicationRecord
  belongs_to: Student
  belongs_to: Teacher
end
