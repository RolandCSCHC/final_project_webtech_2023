class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true
      t.date :incident_date
      t.date :deadline_date
      t.date :close_date
      t.string :title
      t.string :description
      t.string :priority
      t.string :status
      t.string :tags
      t.integer :resolution_eval

      t.timestamps
    end
  end
end
