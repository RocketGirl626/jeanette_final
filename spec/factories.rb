FactoryGirl.define do
  factory :user do
    email 'raven@raven.com'
    password '66666666'
  end

  factory :post do
    name 'Hello World'
    description 'Hi Back!'

    # if needed
    # is_active true
  end

end
