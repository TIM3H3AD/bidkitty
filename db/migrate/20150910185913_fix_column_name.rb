class FixColumnName < ActiveRecord::Migration
  def change
  	  rename_column :bids, :total_funds, :total_funds_borrowed
  end
end
