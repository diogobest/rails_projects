FactoryBot.define do
  factory :product do
    category

    name { "phone xyz" }
    price { 10.99 }
  end
end
