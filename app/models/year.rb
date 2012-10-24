class Year < ActiveRecord::Base
  has_many :lists
  attr_accessible :name

  default_scope :order => 'created_at desc'
end
