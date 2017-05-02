class StudentController < ApplicationController
  def login
  @student=Student.new
  end

  def index
    @student=Student.new(user_params)
    @student.save
	@newstudent=Student.find_by_FirstName(@student.FirstName)
    @newstudent.save
	#@newstudent.all
  end
  def user_params
    params.require(:student).permit(:Firstname,:LastName,:Emailid,:Password)
  end
end
