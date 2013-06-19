class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.string :name
      t.boolean :origin_protected
      t.string :image_url
      t.float :average_rating
      t.references :milk_type
      t.references :country
      t.references :texture

      t.timestamps
    end
    add_index :cheeses, :milk_type_id
    add_index :cheeses, :country_id
    add_index :cheeses, :texture_id
  end
end
