class Project < ActiveRecord::Base
  belongs_to :software_release
  belongs_to :user

  has_many :deliverables,                               :dependent  => :destroy
  has_many :ba_specs,   :through    => :deliverables,   :dependent  => :destroy    
  has_many :rfcs,       :inverse_of => :project,        :dependent  => :destroy
  
  has_many :release_projects,   :dependent  => :destroy
  has_many :software_releases,  :through    => :release_projects
  
  accepts_nested_attributes_for :rfcs
  
  validates_presence_of :name
  
end
