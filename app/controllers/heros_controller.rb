class HerosController < ApplicationController

  def index
    @heros = Hero.all
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def edit
    # if current_user == admin
    @team = Team.find(params[:id])
    @hero = Hero.find(params[:id])
  end

  def update
    # if current_user == admin
    @hero = Hero.find(params[:id])
    @hero.update!(hero_params)
    flash[:notice] = "Updated #{@hero.name}"
  end

private
  def hero_params
    params.require(:hero).permit(:name, :primary, :image, :complexity, :description, :playing, :with, :against, :team_id)
  end

end
