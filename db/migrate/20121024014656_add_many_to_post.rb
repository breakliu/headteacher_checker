class AddManyToPost < ActiveRecord::Migration
  def change
    add_column :posts, :student_growup_record, :string, :default => ""
    add_column :posts, :mark_column, :string, :default => ""
    add_column :posts, :class_news_1, :string, :default => ""
    add_column :posts, :class_news_2, :string, :default => ""
    add_column :posts, :class_news_3, :string, :default => ""
    add_column :posts, :class_news_4, :string, :default => ""
    add_column :posts, :reading_show, :string, :default => ""
    add_column :posts, :writing_show, :string, :default => ""
    add_column :posts, :morning_meeting, :string, :default => ""
    add_column :posts, :one_min_rite, :string, :default => ""
    add_column :posts, :wall_newspaper, :string, :default => ""
    add_column :posts, :class_health, :string, :default => ""
    add_column :posts, :reading_status, :string, :default => ""
    add_column :posts, :homework_writing_1, :string, :default => ""
    add_column :posts, :homework_writing_2, :string, :default => ""
    add_column :posts, :homework_writing_3, :string, :default => ""
    add_column :posts, :homework_format_1, :string, :default => ""
    add_column :posts, :homework_format_2, :string, :default => ""
    add_column :posts, :homework_format_3, :string, :default => ""
  end
end
