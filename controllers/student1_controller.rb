class Student1Controller < ApplicationController
  def login
  @student1=Student1.new
  end

  def index
    @student1=Student1.new(user_params)
    @student1.save
	@newstudent1=Student1.find_by_FirstName(@student1.FirstName)
    @newstudent1.save
	#@newstudent.all
  end
  def user_params
    params.require(:student1).permit(:Firstname,:LastName,:Emailid,:Password,:PhoneNo,:City,:State,:Country,:AadharNo)
  end
end

