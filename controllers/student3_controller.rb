class Student3Controller < ApplicationController
  def login
  @student3=Student3.new
  end

  def index
    @student3=Student3.new(user_params)
    @student3.save
	@newstudent3=Student3.find_by_FirstName(@student3.FirstName)
    @newstudent3.save
	#@newstudent.all
  end
  def user_params
    params.require(:student3).permit(:Firstname,:LastName,:Emailid,:Password,:PhoneNo,:City,:State,:Country,:AadharNo)
  end
end
