class Car < ApplicationRecord
  belongs_to :driver
  belongs_to :car_model
end
