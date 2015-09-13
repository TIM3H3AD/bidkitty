class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :website
      t.string :email
      t.text :description
      t.string :phone

      t.timestamps
    end
  end
end
