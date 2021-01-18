FactoryBot.define do
  factory :car do
    license_plate { "MyString" }
    car_type { "MyString" }
    driver { nil }
    car_model { nil }
    active { false }
  end
end
