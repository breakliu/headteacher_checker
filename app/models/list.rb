# encoding: utf-8
class List < ActiveRecord::Base
  MONTHS = %w[一月 二月 三月 四月 五月 六月 七月 八月 九月 十月 十一月 十二月]
  has_many :posts, :dependent => :destroy
  belongs_to :year
  
  accepts_nested_attributes_for :posts, :allow_destroy => true
  attr_accessible :posts_attributes
end
