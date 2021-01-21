class DriverSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :working, :role

  belongs_to :user
  has_many :cars
end
