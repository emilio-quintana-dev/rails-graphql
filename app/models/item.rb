class Item < ApplicationRecord
  validates :identifier, presence: true, uniqueness: true
  validates :type, presence: true
  validates :label, presence: true

  # [NOTE]: This is a workaround for the STI implementation in Rails
  self.inheritance_column = 'sti_type'
end
