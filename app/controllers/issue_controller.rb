class IssueController < ApplicationController
  def create
    @issues = Issue.all
    @issue = Issue.new(price: params[:issue][:price].to_i, remote_ip: request.remote_ip)
    if @issue.save
      redirect_to confirmation_path(id: @issue.id)
    else
      redirect_to root_path
    end
  end
end
