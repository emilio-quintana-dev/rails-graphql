class ModifierGroup < ApplicationRecord
  validates :identifier, presence: true, uniqueness: true
end
