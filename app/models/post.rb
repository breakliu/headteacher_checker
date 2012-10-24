class Post < ActiveRecord::Base
  belongs_to :list
  attr_accessible :list_id, :tname, :gname, 
                  :class_info_1, :class_info_2, :class_info_3, :class_info_4, :student_growup_record, :mark_column, 
                  :class_news_1, :class_news_2, :class_news_3, :class_news_4, :reading_show, :writing_show, 
                  :morning_meeting, :one_min_rite, :wall_newspaper, :class_health, :reading_status, 
                  :homework_writing_1, :homework_writing_2, :homework_writing_3, :homework_format_1, :homework_format_2, :homework_format_3
end
