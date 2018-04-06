class Issue < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: { other_than: 0 }
end
