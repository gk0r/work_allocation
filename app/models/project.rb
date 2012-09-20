class Project < ActiveRecord::Base
  belongs_to :software_release
  belongs_to :user

  has_many :deliverables,                               :dependent  => :destroy
  has_many :milestones,                                 :dependent  => :destroy
  has_many :ba_specs,   :through    => :deliverables,   :dependent  => :destroy    
  
  has_many :release_projects,   :dependent  => :destroy
  has_many :software_releases,  :through    => :release_projects
  
  validates_presence_of :name
  validates_uniqueness_of :dmr, :if => :dmr?
  
  attr_accessible :name, :dmr, :admin_ref, :category, :work_plan_id, :approval_status, :software_release_ids
  
  # def to_label
  #   "DMR #{self.dmr} #{self.name}"
  # end
  
  def dmr
    # Allow blank DMR for future work that has not been assigned a formal record yet. Display "????" where there is no DMR recorded
    dmr = read_attribute(:dmr)
    dmr.empty? ? "????" : dmr if dmr
  end
    
end
