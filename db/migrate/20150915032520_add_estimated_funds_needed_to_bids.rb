class AddEstimatedFundsNeededToBids < ActiveRecord::Migration[5.2]
  def change
    add_column :bids, :estimated_funds_needed, :integer
  end
end
