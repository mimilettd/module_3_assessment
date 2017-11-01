FactoryBot.define do
  factory :order do
    amount 10.0
    association :user
  end
end
