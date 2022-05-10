class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :course_name
      t.integer :cee_marks
      t.integer :see_marks

      t.timestamps
    end
  end
end
