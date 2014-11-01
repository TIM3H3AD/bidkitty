class AddAvailableFundsToBids < ActiveRecord::Migration
  def change  	  
    add_column :bids, :available_funds, :integer
  end
end
