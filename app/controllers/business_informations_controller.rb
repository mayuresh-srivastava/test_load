class BusinessInformationsController < ApplicationController
  def create
    params[:business_information][:user_id] = session[:current_user_id]
    @business_information = BusinessInformation.new(business_information_params)
    if @business_information.save
      redirect_to '/homes/Registration_PDF'
    else
      redirect_to '/homes/Registration'
    end
  end

  private
  def business_information_params
    params.require(:business_information).permit(:is_vet,:is_vet_tech_nurse,:is_rsrchr,:best_desc_wrkplc,:how_load_be_used,:how_hear_abt_load,:terms_condtn,:user_id)
  end
end
