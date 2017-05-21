class ChaptersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]

  def index
    @chapter = Chapter.all
  end

  def show
  end

  def new
    @chapter = Chapter.new(book_id: params[:book_id])

    4.times {@chapter.important_dates.build}
  end

  def create
    @chapter = Chapter.new(book_id: params[:book_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_chapter
    @chapter = Chapter.find(params[:id])
  end

  def chapter_params
    params.require(:chapter).permit(:title, :main_focus, important_dates_attributes: [:date, :title])
  end
end
