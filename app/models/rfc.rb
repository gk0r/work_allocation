class Rfc < ActiveRecord::Base
  attr_accessible :description, :milestone_id, :rfc
  
  belongs_to :milestone
  
  validates_uniqueness_of :rfc
end
