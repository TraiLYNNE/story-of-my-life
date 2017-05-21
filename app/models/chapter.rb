class Chapter < ApplicationRecord
  # Associations
  belongs_to :book

  has_many :pages
  has_many :important_dates

  accepts_nested_attributes_for :important_dates
end
