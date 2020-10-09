class FixColumnName < ActiveRecord::Migration[5.2]
  def change
  	  rename_column :bids, :total_funds, :total_funds_borrowed
  end
end
