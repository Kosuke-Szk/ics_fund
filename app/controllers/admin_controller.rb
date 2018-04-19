class AdminController < ApplicationController
  before_action :authenticate_user!
  def home
    @requests = Request.all
    @request_gift_log = RequestGiftLog.all
  end

  def status_update
    log = RequestGiftLog.find(params[:id])
    RequestGiftLog.status_update(log)
    redirect_to admin_home_path
  end
end
