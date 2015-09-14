class RemoveAuctionStartingBidFromBids < ActiveRecord::Migration
  def change
    remove_column :bids, :auction_starting_bid, :string
  end
end
