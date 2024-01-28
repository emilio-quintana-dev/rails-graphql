class Section < ApplicationRecord
  validates :identifier, presence: true, uniqueness: true
end
