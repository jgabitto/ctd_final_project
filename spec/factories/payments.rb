FactoryBot.define do
  factory :payment do
    credit_card_type { "MyString" }
    price { "9.99" }
    billing_address { "MyString" }
  end
end
