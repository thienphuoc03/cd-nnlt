class CreateBookManagements < ActiveRecord::Migration[7.0]
  def change
    create_table :book_managements do |t|
      t.string :student_id_143
      t.string :full_name_143
      t.string :class_143
      t.string :book_id_143
      t.string :book_name_143
      t.string :book_author_143
      t.string :book_category_143
      t.string :bm_number_143
      t.string :borrow_date_143
      t.string :back_date_143
      t.string :number_date_143

      t.timestamps
    end
  end
end
