class AddClassInfoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :class_info_1, :string, :default => ""
    add_column :posts, :class_info_2, :string, :default => ""
    add_column :posts, :class_info_3, :string, :default => ""
    add_column :posts, :class_info_4, :string, :default => ""
  end
end
