class Location < ApplicationRecord
  belongs_to :user

  validates :location, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :user_id, presence: true, uniqueness: true

  reverse_geocoded_by :latitude, :longitude
end
