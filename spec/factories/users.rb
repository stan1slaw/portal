FactoryBot.define do
  factory :user do |f|
    f.sequence(:username) { |i| "user#{i}"}
    f.sequence(:email) { |i| "user#{i}@gmail.com"}
    f.password "password"
    f.password_confirmation "password"
  end
  factory :invalid_user, parent: :user do |f|
    f.password_confirmation "anotherpassword"
  end
  factory :admin, parent: :user do |f|
    f.admin true
  end
end
