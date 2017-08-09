class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @heros = @team.heros
    @unpicked = Team.find_by_name(name = "unpicked")
    @dire = Team.find_by_name(name = "Dire")
    @radiant = Team.find_by_name(name = "Radiant")
  end

  def edit
    @team = Team.find(params[:id])
    @heros = Hero.all
  end

  def update
    @team = Team.find(params[:id])
    @team.update!(team_params)
  end

private
  def team_params
    params.require(:team).permit(@team.heros)
  end

end
