class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @entries = @match.entries
  end

  def create
    @match = Match.new(match_params)
    @match.save
  end

  private

  def match_params
    params.require(:match).permit(:name, :category, :event).merge(competition_id: params[:competition_id])
  end
end