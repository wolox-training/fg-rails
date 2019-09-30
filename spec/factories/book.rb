require 'faker'

FactoryBot.define do
  factory :book do
    genre { Faker::Book.genre }
    title { Faker::Book.title }
    author { Faker::Name.name }
    year { Faker::Number.between(from: 1900, to: 2019) }
    editor { Faker::Book.publisher }
    image { Faker::Avatar.image }
  end
end
