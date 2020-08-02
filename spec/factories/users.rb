FactoryBot.define do

  factory :user do
    id                      {1}
    email                   {"aaa@test.com"}
    password                {"000000"}
    password_confirmation   {"000000"}
  end

end