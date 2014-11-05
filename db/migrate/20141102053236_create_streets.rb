class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.string :name
      t.string :direction

      t.timestamps
    end
  end
end
