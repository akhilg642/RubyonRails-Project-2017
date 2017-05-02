class WelcomeController < ApplicationController
  def login
  end
  def index
  end
  
  private
  def user_param
  params.require(:user).permit(:PhoneNo)
  end
  
end
