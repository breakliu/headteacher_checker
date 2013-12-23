class Grade < ActiveRecord::Base
  acts_as_list
  attr_accessible :name, :position, :teacher_name

  default_scope order('position ASC')
end
