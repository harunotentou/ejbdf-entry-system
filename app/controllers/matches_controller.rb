class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @entries = @match.entries
  end
end