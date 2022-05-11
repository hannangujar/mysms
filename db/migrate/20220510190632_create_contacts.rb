class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :contact_type
      t.integer :number

      t.timestamps
    end
  end
end
