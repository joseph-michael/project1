class Website < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2, maximum: 50}
  validates :description, presence: true
  has_and_belongs_to_many :users
end
