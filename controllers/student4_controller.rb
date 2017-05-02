class Student4Controller < ApplicationController
 def login
  @student4=Student4.new
  end

  def index
   @student4=Student4.new(user_params)
    @student4.save
	@newstudent4=Student4.find_by_Service(@student4.Service)
    @newstudent4.save
	#@newstudent.all
  end
  def user_params
    params.require(:student4).permit(:Service,:Price,:Date,:Time)
  end
end
