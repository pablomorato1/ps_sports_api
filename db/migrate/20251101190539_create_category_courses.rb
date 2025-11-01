class CreateCategoryCourses < ActiveRecord::Migration[8.0]
  def change
    create_table :category_courses do |t|
      t.integer :category_id, null: false
      t.integer :classroom_id, null: false

      t.timestamps
    end

    add_index :category_courses, :category_id
    add_index :category_courses, :classroom_id
  end
end
