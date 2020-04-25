class Event < ApplicationRecord
  has_many :event_genres, dependent: :destroy
  has_many :genres, through: :event_genres
  belongs_to :income, optional: true
  belongs_to :expense, optional: true
end
