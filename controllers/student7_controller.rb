class Student7Controller < ApplicationController
  def login
  @student7=Student7.new
  end

  def index
    @student7=Student7.new(user_params)
    @student7.save
	@newstudent7=Student7.find_by_FirstName(@student7.FirstName)
    @newstudent7.save
	#@newstudent.all
  end
  def user_params
    params.require(:student7).permit(:PhoneNo)
  end
end
