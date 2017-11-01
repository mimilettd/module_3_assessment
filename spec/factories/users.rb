FactoryBot.define do
  factory :user do
    sequence :name do |n|
      "Mimi#{n}"
    end
    sequence :email do |n|
      "mimi#{n}@gmail.com"
    end
  end
end
