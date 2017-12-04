class Page < ApplicationRecord
  has_many :subject

  scope :visible, lambda {where(:visible => true)}
  scope :invisible, lambda{where(:visible => false)}
  scope :sorted, lambda{order("position ASC")}
 
  scope :newest_first, lambda{order("position DESC")}
  scope :search, lambda{|query| where{["name LIKE ?" , "%#{query}%"]}}
end
