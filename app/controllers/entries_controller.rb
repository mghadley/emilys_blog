class EntriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_path
    else
    end
  end

  def edit
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :body)
  end
end
