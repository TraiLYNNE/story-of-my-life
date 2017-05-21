class ChaptersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]

  def index
    @chapter = Chapter.all
  end

  def show
  end

  def new
  end

  def create
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
end
