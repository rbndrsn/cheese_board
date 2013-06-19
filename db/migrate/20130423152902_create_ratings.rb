class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :star_rating
      t.text :text_rating
      t.boolean :is_favourite
      t.references :user
      t.references :cheese

      t.timestamps
    end
    add_index :ratings, :user_id
    add_index :ratings, :cheese_id
  end
end
