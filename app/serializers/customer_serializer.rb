class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :role, :user_id

  belongs_to :user
end
