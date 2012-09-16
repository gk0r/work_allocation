class Role < ActiveRecord::Base
  attr_accessible :name
  
  auto_strip_attributes :name
  
  belongs_to :users
  
  validates_presence_of :name, :unique => true
end
