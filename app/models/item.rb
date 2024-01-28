class Item < ApplicationRecord
  validates :identifier, presence: true, uniqueness: true
end
