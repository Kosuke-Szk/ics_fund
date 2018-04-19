class GiftController < ApplicationController
  protect_from_forgery except: :order
  def show
    @gifts =  Gift.where(date: params[:date])    
  end

  def order
    @request = Request.create(total: params[:total], status: 0, name: params[:name])
    params[:gift_ids].each do |gift_id|
      RequestGiftLog.create_log(@request.id, gift_id)
    end
    redirect_to 'http://www.indiancancersociety.org/how-you-can-help/donate.aspx'
  end
end
