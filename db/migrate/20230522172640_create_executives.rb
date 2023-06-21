class CreateExecutives < ActiveRecord::Migration[7.0]
  def change
    create_table :executives do |t|
      t.string :name
      t.string :last_name
      t.integer :phone_number
      t.string :role

      t.timestamps
    end
  end
end
