class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

  if @entry.save
    redirect_to entry_url(params[:id])
  else
    redirect_to new_entry_url
  end
end

  def create
    @entry = Entry.new
    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    @entry.save
    redirect_to entries_path

  end


  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path
  end

end
