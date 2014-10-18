# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :coin do
    xdp_name "MyString"
    xdp_address "MyString"
    btc_address "MyString"
    proof_of_reserve "MyString"
    title "MyString"
    info "MyText"
    webpage "MyString"
    dev_name "MyString"
    dev_contact "MyString"
    image_1 "MyString"
    image_2 "MyString"
    image_3 "MyString"
    wbi_verified "MyString"
    capital_assets_value "MyString"
    capital_assets_info "MyText"
  end
end
