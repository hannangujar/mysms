class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.references :staff, null: false, foreign_key: true
      t.time :duty_time_start
      t.time :duty_time_end
      t.string :speciality
      t.string :education_degree
      t.integer :expirence_in_years
      t.string :hire_by
      t.json :meta

      t.timestamps
    end
  end
end
