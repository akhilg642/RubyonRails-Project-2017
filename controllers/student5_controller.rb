class Student5Controller < ApplicationController
 def login
  @student5=Student5.new
  end

  def index
    @student5=Student5.new(user_params)
    @student5.save
	@newstudent5=Student5.find_by_FirstName(@student5.FirstName)
    @newstudent5.save
	#@newstudent.all
  end
  def user_params
    params.require(:student5).permit(:Firstname,:LastName,:Emailid,:Password,:PhoneNo,:City,:State,:Country,:AadharNo)
  end
end
