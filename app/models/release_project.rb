class ReleaseProject < ActiveRecord::Base
  attr_accessible :project_id, :software_release_id
  
  belongs_to :project
  belongs_to :software_release
  
end
