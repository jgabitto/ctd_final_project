class LocationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :content

  belongs_to :user
end
