class CreateParents < ActiveRecord::Migration[7.0]
  def change
    create_table :parents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :contact, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.string :ocupation
      t.json :meta

      t.timestamps
    end
  end
end
