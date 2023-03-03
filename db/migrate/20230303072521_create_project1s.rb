class CreateProject1s < ActiveRecord::Migration[7.0]
  def change
    create_table :project1s do |t|
      t.string :image
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
