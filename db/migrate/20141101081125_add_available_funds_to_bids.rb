class AddAvailableFundsToBids < ActiveRecord::Migration[5.2]
  def change  	  
    add_column :bids, :available_funds, :integer
  end
end
