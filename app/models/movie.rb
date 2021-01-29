class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :year, numericality: true
  validates :plot, length: {minimum: 30}
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
