class AddEstimatedFundsNeededToBids < ActiveRecord::Migration
  def change
    add_column :bids, :estimated_funds_needed, :integer
  end
end
