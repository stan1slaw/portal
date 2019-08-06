FactoryBot.define do
  factory :review do
    association(:user)
    association(:film)
    body "asdasdasdasdasdasdasd"
    rating 5
  end
end
