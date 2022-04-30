class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :books_count
      t.references :user
      t.timestamps
    end
  end
end
