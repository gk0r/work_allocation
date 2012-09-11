class SoftwareRelease < ActiveRecord::Base
  has_many :projects,         :dependent  => :destroy
  has_many :deliverables

  has_many :ba_specs,         :through => :deliverables
  has_many :tech_specs,       :through => :deliverables
  has_many :code,             :through => :deliverables
  has_many :teams,            :through => :deliverables
  
  has_many :release_projects,   :dependent => :destroy
  has_many :software_releases,  :through => :release_projects
  
end
