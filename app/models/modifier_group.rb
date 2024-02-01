class ModifierGroup < ApplicationRecord
  has_many :modifiers
  has_many :indirect_items, through: :modifiers, source: :item

  has_many :item_modifier_groups, dependent: :destroy
  has_many :direct_items, through: :item_modifier_groups, source: :item

  validates :identifier, presence: true, uniqueness: true
end
