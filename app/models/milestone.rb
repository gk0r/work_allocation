class Milestone < ActiveRecord::Base
  
  belongs_to :project
  belongs_to :software_release
  
  has_many :deliverables,                       :dependent  => :destroy
  has_many :rfcs, :inverse_of => :milestone,    :dependent  => :destroy
  
  accepts_nested_attributes_for :rfcs

  attr_accessible :business_pm, :it_pm, :project_id, :software_release_id, :test_manager, :timesheets_request_date, :work_order, :rfcs_attributes, :approval_status
  
  validates_presence_of :project, :software_release_id
  
  def name
    dmr = self.try(:project).try(:dmr).nil? ? "?????" : self.project.dmr
    release = self.try(:software_release).try(:name).empty? ? "No Release Date" : self.software_release.try(:name)
    "DMR#{dmr}: #{self.project.try(:name)} - #{release}"
  end
  
end
