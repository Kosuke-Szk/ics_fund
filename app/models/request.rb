class Request < ApplicationRecord
  validates :name, presence: true
end
