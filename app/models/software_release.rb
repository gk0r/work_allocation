class SoftwareRelease < ActiveRecord::Base
  has_many :projects
end
