class Project < ActiveRecord::Base
  belongs_to :software_release
  belongs_to :user

  has_many :deliverables,                               :dependent  => :destroy
  has_many :milestones,                                 :dependent  => :destroy
  has_many :ba_specs,   :through    => :deliverables,   :dependent  => :destroy    
  
  has_many :release_projects,   :dependent  => :destroy
  has_many :software_releases,  :through    => :release_projects
  
  validates_presence_of :name
  validates_uniqueness_of :dmr
  
end
