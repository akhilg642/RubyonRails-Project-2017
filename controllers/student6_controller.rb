class Student6Controller < ApplicationController
  def login
  @student6=Student6.new
  end

  def index
   @student6=Student6.new(user_params)
    @student6.save
	@newstudent6=Student6.find_by_Service(@student6.Service)
    @newstudent6.save
	#@newstudent.all
  end
  def user_params
    params.require(:student6).permit(:Service,:Price,:Date,:Time)
  end
end
