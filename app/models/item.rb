class Item < ApplicationRecord
  has_one :section_item
  has_one :modifier

  has_many :item_modifier_groups
  has_many :modifier_groups, through: :item_modifier_groups
  has_many :modifiers, -> { order(display_order: :asc) }, through: :modifier_groups
  has_many :items, through: :modifiers

  validates :identifier, presence: true, uniqueness: true
  validates :type, presence: true
  validates :label, presence: true
  validates :price, presence: true

  # [NOTE]: This is a workaround for the STI implementation in Rails
  self.inheritance_column = 'sti_type'
end
