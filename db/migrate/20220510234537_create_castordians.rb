class CreateCastordians < ActiveRecord::Migration[7.0]
  def change
    create_table :castordians do |t|
      t.references :staff, null: false, foreign_key: true
      t.integer :role
      t.time :duty_time
      t.json :meta

      t.timestamps
    end
  end
end
