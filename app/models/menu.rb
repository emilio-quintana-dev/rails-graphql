class Menu < ApplicationRecord
  validates :identifier, presence: true, uniqueness: true
end
