class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses
  scope :ordered, -> { order(name: :asc) }
end
