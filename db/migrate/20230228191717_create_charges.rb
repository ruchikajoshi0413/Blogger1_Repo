class CreateCharges < ActiveRecord::Migration[7.0]
  def change
    create_table :charges do |t|
      t.string :charges_type
      t.string :design
      t.string :photography
      t.string :storage
      t.string :support
      t.integer :price

      t.timestamps
    end
  end
end
