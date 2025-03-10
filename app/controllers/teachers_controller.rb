class TeachersController < ApplicationController
  def index #teachers can see all teachers
  end 

  def create 
    teachers = Teacher.create()
  end 

  def update
  end 

  def destroy 
  end
end
