# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lot do
    number 1
    type ""
    name "MyString"
    contact "MyString"
    wb_verified "MyString"
    funds 1
  end
end
