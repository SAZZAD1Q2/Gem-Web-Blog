# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    email { 'john@example.com' } # Add the email attribute
    # Add other attributes as needed
  end
end
