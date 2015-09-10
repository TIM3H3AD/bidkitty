class AddTotalPaymentsMadeToBids < ActiveRecord::Migration
  def change
    add_column :bids, :total_payments_made, :string
  end
end
