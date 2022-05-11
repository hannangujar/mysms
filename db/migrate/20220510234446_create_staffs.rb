class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :contact, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.integer :staff_type
      t.integer :salary
      t.integer :identity_card_number
      t.string :father_name
      t.string :place_of_birth
      t.date :date_of_hiring
      t.integer :year_of_service
      t.json :meta

      t.timestamps
    end
  end
end
