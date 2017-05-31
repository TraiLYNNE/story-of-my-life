class Page < ApplicationRecord
  # Associations
  belongs_to :chapter

  has_many :entries
  has_many :tasks

  accepts_nested_attributes_for :tasks, reject_if: proc { |att| att['name'].blank?}
  accepts_nested_attributes_for :entries, reject_if: proc { |att| att['content'].blank?}
end
