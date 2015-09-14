class AddAuctionStartingBidToBids < ActiveRecord::Migration
  def change
    add_column :bids, :auction_starting_bid, :integer
  end
end
