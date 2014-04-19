FactoryGirl.define do
  factory :post do
    title 'My Post'
    content 'Lorem ipsum dolor sit amet.'
    author 'Randy Savage'
  end
    factory :comment do
      association :post
      author "Rohit"
      content "This must be at least 15 characters"
  end
end
