class DownloadsController < ApplicationController
	def create
    if (params[:download][:int_vst] == "Non-branded_Initial" || params[:download][:int_vst] == "Non-branded_Follow-up" || params[:download][:int_vst] == "Non-branded_Both")
      params[:download][:is_prdct_branded] = false
    end
    if (params[:download][:flp_vst] == "CMD_Initial" or params[:download][:flp_vst] == "CMD_Follow-up" or params[:download][:flp_vst] == "CMD_Both") 
      params[:download][:is_prdct_branded] = true
    end
    if (params[:download][:both] == "GMD_Initial" || params[:download][:both] == "GMD_Follow-up" || params[:download][:both] == "GMD_Both")
      params[:download][:is_prdct_branded] = true
    end
    params[:download][:download_date] = Time.now
    params[:download][:user_id] = session[:current_user_id]
    @download = Download.new(download_params)
    @download.save!                                                         
    session[:current_user_id] = nil
  end

  private
  def download_params
    params.require(:download).permit(:language,:is_prdct_branded,:int_vst,:flp_vst,:both,:is_downloaded,:download_date,:user_id)
  end
end
