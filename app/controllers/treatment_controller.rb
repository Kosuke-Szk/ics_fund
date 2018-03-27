class TreatmentController < ApplicationController
  def add_treatment
    Treatment.create(amount: params[:treatment][:amount].to_i)
    redirect_to root_path    
  end
end
