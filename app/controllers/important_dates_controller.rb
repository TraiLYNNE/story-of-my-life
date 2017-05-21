class ImportantDatesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_idate, only: [:show, :edit, :update, :destroy]

  def index
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

  def set_idate
    @idate = ImportantDate.find(params[:id])
  end
end
