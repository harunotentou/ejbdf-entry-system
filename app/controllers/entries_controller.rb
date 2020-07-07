class EntriesController < ApplicationController
  def index
    @matches = current_user.matches
  end

  def create
    current_user.entries.create(match_id: params[:match_id])
    flash[:success] = '試合にエントリーしました'
    redirect_to competitions_path
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    flash[:success] = 'エントリーを取り消しました'
    redirect_to entries_path
  end
end
