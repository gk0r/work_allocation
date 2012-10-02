require 'test_helper'
require 'rails/performance_test_help'

class DeliverablesTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  # self.profile_options = { :runs => 5, :metrics => [:wall_time, :memory]
  #                          :output => 'tmp/performance', :formats => [:flat] }

  def setup
    FactoryGirl.create_list(:ba_spec, 10)    
  end

  def test_deliverables
    get '/deliverables'
  end
end
