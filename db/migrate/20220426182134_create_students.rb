class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :usn
      t.string :name
      t.string :gender
      t.integer :phone_number

      t.timestamps
    end
  end
end
