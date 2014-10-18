class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :xdp_name
      t.string :xdp_address
      t.string :btc_address
      t.string :proof_of_reserve
      t.string :title
      t.text :info
      t.string :webpage
      t.string :dev_name
      t.string :dev_contact
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :wbi_verified
      t.string :capital_assets_value
      t.text :capital_assets_info

      t.timestamps
    end
  end
end
