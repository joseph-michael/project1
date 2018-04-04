class Website < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2, maximum: 50}
  validates :description, presence: true
end
