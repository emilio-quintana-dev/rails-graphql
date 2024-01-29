class Menu < ApplicationRecord
  validates :identifier, presence: true, uniqueness: true
  validates :label, presence: true
  validates :state, presence: true
end
