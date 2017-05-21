class BooksController < ApplicationController
  belongs_to :user

  has_many :chapters
  has_many :pages, through: :chapters
end
