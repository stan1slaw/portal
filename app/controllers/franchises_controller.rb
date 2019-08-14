class FranchisesController < ApplicationController
  before_action :admin_user,     only: [:edit,:new,:destroy,:update,:create]
  def index
    @franchises = Franchise.all
end

  def show
    @franchise = Franchise.find(params[:id])
    @films = Film.where(franchise_id: @franchise.id)
  end

  def new
    @franchise = Franchise.new
  end

  def edit; end

  def create
    @franchise = Franchise.new(category_params)
    if @franchise.save
      redirect_to @franchise, notice: "Franchise was created!"
    else
      render :new
    end
  end

  def destroy
    @franchise.destroy
    redirect_to action: 'index', notice: "Franchise was deleted!"
  end

  private

  def admin_user
    if current_user.try(:admin?)

    else
      render 'films/adminError', status: 403
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def category_params
    params.require(:franchise).permit(:name, :description, :display_in_navbar)
  end
end
