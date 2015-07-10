FactoryGirl.define do
  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
  end

  factory :post do
    name 'Hello World'
    description 'Hi Back!'

    # if needed
    # is_active true
  end

end
