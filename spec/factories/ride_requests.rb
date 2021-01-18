FactoryBot.define do
  factory :ride_request do
    customer { nil }
    driver { nil }
    request_start_time { "2021-01-18 13:57:57" }
    ride_start_time { "2021-01-18 13:57:57" }
    ride_end_time { "2021-01-18 13:57:57" }
    gps_starting_point { "" }
    gps_end_point { "" }
    cancelled { false }
    payment { nil }
  end
end
