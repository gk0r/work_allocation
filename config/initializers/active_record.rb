class ActiveRecord::Base
  @@models = []

  def self.inherited sub_class
    @@models << sub_class
  end

  def self.models
    @@models
  end
end