class AddTeacherNameToGrade < ActiveRecord::Migration
  def change
    add_column :grades, :teacher_name, :string
  end
end
