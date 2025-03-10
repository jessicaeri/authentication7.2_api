class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :last_name
      t.string :first_name
      t.string :role
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
