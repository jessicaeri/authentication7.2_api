class Teacher < ApplicationRecord
  has_many: Courses
  has_many: Students

end
