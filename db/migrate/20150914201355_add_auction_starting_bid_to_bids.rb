class AddAuctionStartingBidToBids < ActiveRecord::Migration[5.2]
  def change
    add_column :bids, :auction_starting_bid, :integer
  end
end
