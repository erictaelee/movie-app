class Actor < ApplicationRecord
  validates :first_name, length: { minimum: 2}
  validates :last_name, length: { minimum: 2}
  validates :known_for, presence: true
  validates :age, numericality: {grater_than: 13}

  belongs_to :movie
end
