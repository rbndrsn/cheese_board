class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email_address
      t.string :avatar
      t.string :alias

      t.timestamps
    end
  end
end
