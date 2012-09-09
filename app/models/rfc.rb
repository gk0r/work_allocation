class Rfc < ActiveRecord::Base
  attr_accessible :description, :project_id, :rfc
  
  belongs_to :project
end
