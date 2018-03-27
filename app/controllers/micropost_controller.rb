class MicropostController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update]

  def index
    @microposts = Micropost.where(status: params[:status])
  end

  def new
    @micropost = Micropost.new
  end

  def show
    @micropost = Micropost.find(params[:id])
    MicropostLog.create(micropost_id: @micropost.id)
  end

  def edit
    @micropost = Micropost.find(params[:id])
  end

  def update
    @micropost = Micropost.find(params[:id])
    if @micropost.update_attributes(micropost_params)
      redirect_to @micropost
    else
      render action: :edit
    end
  end

  def destroy
    @micropost = Micropost.find(params[:id])
    @micropost.destroy
    redirect_to root_path
  end

  def create
    @micropost = Micropost.new(micropost_params)
    if @micropost.save
      redirect_to @micropost
    else
      render action: :new
    end
  end

  private
    def micropost_params
      params.require(:micropost).permit(:name, :title, :content, :image, :status)
    end
end
