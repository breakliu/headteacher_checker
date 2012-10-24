class Grade < ActiveRecord::Base
  acts_as_list
  attr_accessible :name, :position, :teacher_name
end
