class CompetitionsController < ApplicationController
  def index
    @competitions = Competition.all.order(due_on: :asc)
    @competition = Competition.new
  end

  def show
    @competition = Competition.find(params[:id])
    @match = Match.new
  end

  def create
    @competition = Competition.new(competition_params)
    if @competition.save
    flash[:success] = '大会を作成しました'
      redirect_to competitions_path
    else
      redirect_back_or_to competitions_path, danger: '大会の作成に失敗しました'
    end
  end

  private

  def competition_params
    params.require(:competition).permit(:name, :due_on, :place)
  end
end
