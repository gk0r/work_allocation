class Project < ActiveRecord::Base
  belongs_to :software_release
  belongs_to :user
  has_many :deliverables
end
