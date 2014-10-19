class Bid < ActiveRecord::Base
  validates :auction_end, :auction_id, :bid_threshold, :btc_address, :maker, :maker_email, :maker_phone, :plan, :street_name, :street_number, :total_funds, :unique_name, :presence => true
end
