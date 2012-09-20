class Milestone < ActiveRecord::Base
  
  belongs_to :project
  belongs_to :software_release
  
  has_many :deliverables,                       :dependent  => :destroy
  has_many :rfcs, :inverse_of => :milestone,    :dependent  => :destroy
  
  accepts_nested_attributes_for :rfcs

  attr_accessible :business_pm, :it_pm, :project_id, :software_release_id, :test_manager, :timesheets_request_date, :work_order, :rfcs_attributes, :approval_status
  
  validates_presence_of :project, :software_release_id
  
  def name
    dmr = self.project.dmr.empty? ? "?????" : self.project.dmr
    release = self.software_release.name.empty? ? "No Release Date" : self.software_release.name
    "DMR#{dmr}: #{self.project.name} - #{release}"
  end
  
end
