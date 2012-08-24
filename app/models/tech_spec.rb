class TechSpec < ActiveRecord::Base
  belongs_to :deliverables
  belongs_to :user
end
