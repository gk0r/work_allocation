class BaSpec < ActiveRecord::Base
  belongs_to :deliverable
  belongs_to :user
  
  validates_presence_of :deliverable
  
  # attr_accessible :effort
  
  human_attribute_name('BA Spec')
  
  def progress
    read_attribute(:progress).to_s + '%'
  end
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |ba_spec|
        csv << ba_spec.attributes.values_at(*column_names)
      end
    end
  end
  
end
