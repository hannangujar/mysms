class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address_type
      t.text :line_1
      t.text :line_2
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
