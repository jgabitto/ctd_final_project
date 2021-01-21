class CarSerializer < ActiveModel::Serializer
  attributes :id, :driver_id, :license_plate, :car_type, :car_model_id, :active

  belongs_to :driver
  belongs_to :car_model
end
