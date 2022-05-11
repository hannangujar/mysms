class CreateClassrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :classrooms do |t|
      t.references :teacher, null: false, foreign_key: true
      t.string :grade
      t.datetime :start_date
      t.datetime :end_date
      t.string :section
      t.boolean :status
      t.text :remarks
      t.json :meta

      t.timestamps
    end
  end
end
