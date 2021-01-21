class CarModelSerializer < ActiveModel::Serializer
  attributes :id, :model_description, :car_model_name, :manufacture_year
end
