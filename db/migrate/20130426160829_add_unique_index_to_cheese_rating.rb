class AddUniqueIndexToCheeseRating < ActiveRecord::Migration
  def change
    add_index(:ratings, [:user_id, :cheese_id])
  end
end
