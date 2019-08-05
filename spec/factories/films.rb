FactoryBot.define do
  factory :film do |f|
    f.sequence(:name) { |i| "user#{i}"}
    f.description "descriptiondescriptiondescriptiondescriptiondescriptiondescription"
    f.producer "passwordasdasd"
    f.sequence(:id) { |i| "#{i}" }
  end
  factory :invalid_film, parent: :film do |f|
    f.producer "no"
  end
end
