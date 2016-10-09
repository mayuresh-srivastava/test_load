class DownloadsController < ApplicationController
	def create
    if (params[:download][:non_brand] == "Non-branded_Initial" || params[:download][:non_brand] == "Non-branded_Follow-up" || params[:download][:non_brand] == "Non-branded_Both")
      params[:download][:is_prdct_branded] = false
      params[:download][:visit_name] = params[:download][:non_brand]
      params[:download][:non_brand] = true
    else
      params[:download][:is_prdct_branded] = true
      if (params[:download][:first_brand] == "CMD_Initial" or params[:download][:first_brand] == "CMD_Follow-up" or params[:download][:first_brand] == "CMD_Both") 
        params[:download][:visit_name] = params[:download][:first_brand]
        params[:download][:first_brand] = true
      else (params[:download][:second_brand] == "GMD_Initial" || params[:download][:second_brand] == "GMD_Follow-up" || params[:download][:second_brand] == "GMD_Both")
        params[:download][:visit_name] = params[:download][:second_brand]
        params[:download][:second_brand] = true
      end
    end
    if (params[:download][:is_downloaded] == "Download")
      params[:download][:is_downloaded] = true
    end
    params[:download][:download_date] = Time.now
    params[:download][:user_id] = session[:current_user_id]
    @download = Download.new(download_params)
    @download.save
    session[:current_user_id] = nil
    redirect_to '/homes/Registration_PDF'                                                        
  end

  private
  def download_params
    params.require(:download).permit(:language,:is_prdct_branded,:non_brand,:first_brand,:second_brand,:third_brand,:visit_name,:brand_name,:is_downloaded,:download_date,:user_id)
  end
end
