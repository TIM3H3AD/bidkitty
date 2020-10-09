class Bid < ApplicationRecord
  validates :auction_id, :auction_end, :street_number, :street_name, :available_funds, :bid_threshold, :auction_starting_bid,  :presence => true
  
  def estimated_funds_needed
    self.bid.auction_starting_bid - self.bid.available_funds
  end
    
end
