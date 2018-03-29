class HomeController < ApplicationController
  def index
    # @microposts_treatment = Micropost.treatment
    # @microposts_survivor = Micropost.suvivor
    @microposts = Micropost.all.order('created_at DESC')
    @applause_num = Applause.all.count
    @donation_amount = Donation.sum(:amount)
    @treatment_amount = Treatment.sum(:amount)

    @applause = Applause.new
    @donation = Donation.new
    @treatment = Treatment.new
  end
end
