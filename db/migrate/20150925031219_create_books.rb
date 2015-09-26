class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.string :author
      t.string :category
      t.integer :publish_year
      t.string :image

      t.timestamps null: false
    end
  end
end
