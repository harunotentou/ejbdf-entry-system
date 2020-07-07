class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @entries = @match.entries
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      flash[:success] = '試合を作成しました'
      redirect_to competitions_path
    else
      redirect_back_or_to competitions_path, danger: '試合の作成に失敗しました'
    end
  end

  private

  def match_params
    params.require(:match).permit(:name, :category, :event).merge(competition_id: params[:competition_id])
  end
end
