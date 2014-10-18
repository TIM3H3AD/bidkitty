# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bid do
    maker "MyString"
    maker_phone "MyString"
    maker_email "MyString"
    auction_id "MyString"
    street_number "MyString"
    street_name "MyString"
    total_funds "MyString"
    bid_threshold "MyString"
    auction_end "2014-10-17 19:30:28"
    btc_address "MyString"
    plan "MyText"
    unique_name "MyString"
  end
end
