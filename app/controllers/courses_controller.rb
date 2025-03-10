class CoursesController < ApplicationController
  def index #everyone can see all courses
  end 

  def create #onyl Teachers can create a course 
  end 

  def update #only Teachers can update a course
  end 

  def destroy #only Teachers can delete a course
  end

  def course_registrants #only teachers can see who is registered to a specific course
  end
end
