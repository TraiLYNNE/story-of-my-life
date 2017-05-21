class Page < ApplicationRecord
  # Associations
  belongs_to :chapter

  has_many :entries, :tasks

  accepts_nested_attributes_for :tasks
  accepts_nested_attributes_for :entries
end
