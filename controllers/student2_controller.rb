class Student2Controller < ApplicationController
  def login
  @student2=Student2.new
  end

  def index
   @student2=Student2.new(user_params)
    @student2.save
	@newstudent2=Student2.find_by_Service(@student2.Service)
    @newstudent2.save
	#@newstudent.all
  end
  def user_params
    params.require(:student2).permit(:Service,:Price,:Date,:Time)
  end
end
