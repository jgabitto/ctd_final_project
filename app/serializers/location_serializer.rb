class LocationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :location, :latitude, :longitude

  belongs_to :user
end
