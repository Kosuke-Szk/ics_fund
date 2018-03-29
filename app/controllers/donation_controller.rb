class DonationController < ApplicationController
  def add_donation
    Donation.create(amount: params[:donation][:amount].to_i)
    redirect_to root_path
  end

  def create_log
    DonationLog.create!(count: 1)
    redirect_to 'http://www.indiancancersociety.org/how-you-can-help/donate.aspx'
  end
end
