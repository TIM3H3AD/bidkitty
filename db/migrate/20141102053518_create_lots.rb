class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.integer :number
      t.string :type
      t.string :name
      t.string :contact
      t.string :wb_verified
      t.integer :funds

      t.timestamps
    end
  end
end
