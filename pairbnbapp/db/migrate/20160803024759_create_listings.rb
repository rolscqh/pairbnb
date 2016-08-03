class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :address
      t.references :user

      t.timestamps null: false
    end
  end
end
