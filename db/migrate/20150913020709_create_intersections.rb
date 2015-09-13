class CreateIntersections < ActiveRecord::Migration
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
