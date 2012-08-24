class Code < ActiveRecord::Base
  belongs_to :deliverable
  belongs_to :user
  
  validates_presence_of :comments
end
