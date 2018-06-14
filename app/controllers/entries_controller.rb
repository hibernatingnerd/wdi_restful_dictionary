class EntriesController < ApplicationController

  def index

  end

  def edit
    
  end

  def update
     redirect_to entry_url(params[:id])
  end

  def create
      redirect_to entries_url
  end

end
