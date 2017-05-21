class ImportantDatesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_idate, only: [:edit, :update, :destroy]

  def new
    @idate = ImportantDate.new(chapter_id: params[:chapter_id])
  end

  def create
    @idate = ImportantDate.new(important_dates_params)

    if @idate.valid?
      @idate.save

      redirect_to chapter_path(@idate.chapter)
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

  def set_idate
    @idate = ImportantDate.find(params[:id])
  end
end
