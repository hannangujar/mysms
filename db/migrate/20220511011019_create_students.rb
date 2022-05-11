class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.references :user, null: false, foreign_key: true
      t.references :parent, null: false, foreign_key: true
      t.references :classroom, null: false, foreign_key: true
      t.boolean :status
      t.json :meta

      t.timestamps
    end
  end
end
