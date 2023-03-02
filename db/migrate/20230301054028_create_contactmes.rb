class CreateContactmes < ActiveRecord::Migration[7.0]
  def change
    create_table :contactmes do |t|
      t.string :email
      t.string :city
      t.string :contact_no

      t.timestamps
    end
  end
end
