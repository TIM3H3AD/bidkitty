class Bid < ActiveRecord::Base
  validates :auction_id, :auction_end, :street_number, :street_name, :available_funds, :bid_threshold, :total_funds,  :presence => true
end
