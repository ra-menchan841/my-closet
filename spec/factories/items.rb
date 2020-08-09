FactoryBot.define do

  factory :item do
    image                   { File.open("#{Rails.root}/public/images/01ra-men.jpeg") }
    category_id             {"1"}
    color_id                {"1"}
    season_id               {"1"}
    user_id                 {"1"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end