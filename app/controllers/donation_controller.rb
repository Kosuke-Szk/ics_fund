class DonationController < ApplicationController
  def add_donation
    Donation.create(amount: params[:donation][:amount].to_i)
    redirect_to root_path
  end
end
