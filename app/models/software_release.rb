class SoftwareRelease < ActiveRecord::Base
  has_many :projects
  has_many :deliverables
end
