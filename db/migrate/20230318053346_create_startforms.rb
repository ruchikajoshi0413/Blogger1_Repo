class CreateStartforms < ActiveRecord::Migration[7.0]
  def change
    create_table :startforms do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
