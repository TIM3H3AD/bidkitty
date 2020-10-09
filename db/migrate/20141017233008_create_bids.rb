class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.string :maker
      t.string :maker_phone
      t.string :maker_email
      t.string :auction_id
      t.string :street_number
      t.string :street_name
      t.integer :total_funds
      t.integer :bid_threshold
      t.datetime :auction_end
      t.string :btc_address
      t.text :plan
      t.string :unique_name

      t.timestamps
    end
  end
end
