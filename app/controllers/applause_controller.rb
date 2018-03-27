class ApplauseController < ApplicationController
  def create
    Applause.create(applause_num: 1, comment: params[:comment])
    redirect_to root_path
  end
end
