class Item < ApplicationRecord
  validates :identifier, presence: true, uniqueness: true
  validates :type, presence: true
  validates :label, presence: true
end
