class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.date :date_of_birth
      t.string :first_name
      t.string :last_name
      t.integer :role

      t.timestamps
    end
  end
end