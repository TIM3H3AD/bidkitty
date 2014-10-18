class Coin < ActiveRecord::Base
 validates :btc_address, :capital_assets_info, :capital_assets_value, :dev_contact, :dev_name, :image_1, :image_2, :image_3, :info, :proof_of_reserve, :title, :wbi_verified, :webpage, :xdp_address, :xdp_name :presence => true
end
