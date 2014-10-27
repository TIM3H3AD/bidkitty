class AddBidThresholdToBids < ActiveRecord::Migration
  def change
    add_column :bids, :bid_threshold, :integer
  end
end
