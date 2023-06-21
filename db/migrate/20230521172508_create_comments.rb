class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.date :comment_timestamp
      t.string :content
      t.boolean :visible_to_all

      t.timestamps
    end
  end
end
