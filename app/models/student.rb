class Student < ApplicationRecord
  belongs_to: Teacher
  has_many: Courses


end
