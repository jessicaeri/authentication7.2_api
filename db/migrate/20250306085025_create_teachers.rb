class CreateTeachers < ActiveRecord::Migration[8.0]
  def change
    create_table :teachers do |t|
      t.string :last_name
      t.string :first_name
      t.string :role

      t.timestamps
    end
  end
end
