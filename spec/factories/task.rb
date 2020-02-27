FactoryBot.define do
  factory :task do
    title {Faker::Lorem.sentence(word_count: 3)} 
    description {Faker::Lorem.paragraph(sentence_count: 2)}
  end
end