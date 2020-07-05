class CompetitionsController < ApplicationController
  def index
    @competitions = Competition.all
    @competition = Competition.new
  end

  def show
    @competition = Competition.find(params[:id])
    @match = Match.new
  end

  def create
    @competition = Competition.new(competition_params)
    @competition.save
  end

  private

  def competition_params
    params.require(:competition).permit(:name, :due_on, :place)
  end
end
