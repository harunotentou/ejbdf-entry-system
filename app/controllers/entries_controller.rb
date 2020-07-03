class EntriesController < ApplicationController
  def index
    @matches = current_user.matches
  end
  
  def create
    current_user.entries.create(match_id: params[:match_id])
  end
  
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
  end
end