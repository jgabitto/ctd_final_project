class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :phone, :birth_date

  has_one :location
  has_one :customer
  has_one :driver
end
