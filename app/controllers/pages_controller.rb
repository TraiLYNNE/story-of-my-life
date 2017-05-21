class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @page = Page.new(chapter_id: params[:chapter_id])

    4.times {@page.tasks.build}

    @page.entries.build
  end

  def create
    @page = Page.new(page_params)

    if @page.valid?
      @page.save

      redirect_to page_path(@page)
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

  def set_page
    @page = Page.find(params[:id])
  end
end
