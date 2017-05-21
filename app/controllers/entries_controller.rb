class EntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  def new
    @entry = Entry.new(page_id: params[:page_id])
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.valid?
      @entry.save

      redirect_to page_path(@entry.page)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:mood, :content, :page_id)
  end
end
