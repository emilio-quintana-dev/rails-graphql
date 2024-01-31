class Section < ApplicationRecord
  belongs_to :menu
  has_many :items, through: :section_items

  validates :identifier, presence: true, uniqueness: true
end
