class Item < ApplicationRecord
  has_many :section_items

  has_many :item_modifier_groups
  has_many :direct_modifier_groups, through: :item_modifier_groups, source: :modifier_group

  has_many :modifiers
  has_many :indirect_modifier_groups, through: :modifiers, source: :modifier_group

  validates :identifier, presence: true, uniqueness: true
  validates :type, presence: true
  validates :label, presence: true

  # [NOTE]: This is a workaround for the STI implementation in Rails
  self.inheritance_column = 'sti_type'
end
