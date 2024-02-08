class Section < ApplicationRecord
  has_many :section_items, -> { order(display_order: :asc) }, dependent: :destroy
  has_many :items, through: :section_items

  validates :identifier, presence: true, uniqueness: true
end
