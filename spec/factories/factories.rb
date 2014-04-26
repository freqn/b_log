FactoryGirl.define do
  factory :post do
    title 'My Post'
    content 'Lorem ipsum dolor sit amet.'
    author 'Randy Savage'
  end
    factory :comment do
      association :post
      author "Author"
      content "This must be at least 15 characters"
  end
   factory :user do
      username= 'Username'
      password= 'Password'
 end
end
