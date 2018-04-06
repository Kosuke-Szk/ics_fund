class HomeController < ApplicationController
  before_action :check_correct_ip, only: [:confirmation]
  def index
    # @microposts_treatment = Micropost.treatment
    # @microposts_survivor = Micropost.suvivor
    @microposts = Micropost.all.order('created_at DESC')
    @applause_num = Applause.all.count
    @donation_amount = Order.where(status: 'captured').sum(:price) / 100
    @treatment_amount = Treatment.sum(:amount)

    @applause = Applause.new
    @donation = Donation.new
    @treatment = Treatment.new

    @issues = Issue.all
    @issue = Issue.new
  end

  def thankyou
  end

  def confirmation
  end

  def calendar
    
  end

  private
    def check_correct_ip
      @issue = Issue.find(params[:id])
      unless @issue.remote_ip == request.remote_ip
        redirect_to root_path
      end
    end
end
