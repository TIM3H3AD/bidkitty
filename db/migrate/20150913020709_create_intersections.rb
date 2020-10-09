class CreateIntersections < ActiveRecord::Migration[5.2]
  def change
    create_table :intersections do |t|
      t.string :street_one
      t.string :street_two
      t.string :messenger
      t.string :payout
      t.string :contact

      t.timestamps
    end
  end
end
