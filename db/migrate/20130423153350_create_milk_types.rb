class CreateMilkTypes < ActiveRecord::Migration
  def change
    create_table :milk_types do |t|
      t.string :name

      t.timestamps
    end
  end
end