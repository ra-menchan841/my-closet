FactoryBot.define do

  factory :user do
    id                      {1}
    sequence(:email)        {Faker::Internet.email}
    password                {"000000"}
    password_confirmation   {"000000"}
  end

end