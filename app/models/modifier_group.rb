class ModifierGroup < ApplicationRecord
  has_many :modifiers
  has_many :items, through: :modifiers

  has_one :item_modifier_group, dependent: :destroy
  has_one :item, through: :item_modifier_group

  validates :identifier, presence: true, uniqueness: true
end
