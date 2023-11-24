FactoryBot.define do
    factory :review do
      title { "Test review" }
      description { "If your reading this its not a description" }
      score { 5 }
    end
  end