class AddTotalPaymentsMadeToBids < ActiveRecord::Migration[5.2]
  def change
    add_column :bids, :total_payments_made, :string
  end
end
