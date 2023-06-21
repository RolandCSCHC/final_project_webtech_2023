class UpdateForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :tickets, :comments

    add_foreign_key :tickets, :comments, on_delete: :cascade 
  end
end
