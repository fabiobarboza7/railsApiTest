FactoryBot.define do
  factory :random_premise, class: Premise do
    name { Faker::Name.name }
    address { Faker::Address.street_address }
  end
end