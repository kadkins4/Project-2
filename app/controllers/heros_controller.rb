class HerosController < ApplicationController
  before_action :authenticate_user!

  def index
    @heros = Hero.all
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def edit
    # if current_user == admin
    @hero = Hero.find(params[:id])
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.create!(hero_params)

    redirect_to heros_path
    flash[:notice] = "Created #{@hero.name}!"
  end

  def update
    # if current_user == admin
    @hero = Hero.find(params[:id])
    @hero.update!(hero_params)

    redirect_to hero_path
    flash[:notice] = "Updated #{@hero.name}!"
  end

private
  def hero_params
    params.require(:hero).permit(:name, :primary, :image, :complexity, :description, :playing, :with, :against, :team_id)
  end

end
