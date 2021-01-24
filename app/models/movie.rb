class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :year, numericality: true
  validates :plot, length: {minimum: 30}
end
