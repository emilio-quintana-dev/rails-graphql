class Menu < ApplicationRecord
  has_many :menu_sections
  has_many :sections, through: :menu_sections
  has_many :items, through: :sections

  validates :identifier, presence: true, uniqueness: true
  validates :label, presence: true
  validates :state, presence: true
end
