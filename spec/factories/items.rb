FactoryBot.define do

  factory :item do
    id                      {1}
    image                   { File.open("#{Rails.root}/public/images/01ra-men.jpeg") }
    category_id             {1}
    color_id                {1}
    season_id               {1}
    user_id                 {1}
  end

end