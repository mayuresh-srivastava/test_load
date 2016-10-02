class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to '/homes/Registration_Ques'
    else
      redirect_to '/homes/Registration'
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:buss_name,:street,:city,:state_prvnc_cntry,:zip_postal_cd,:country)
  end  
end
