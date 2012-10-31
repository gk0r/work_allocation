module ChartHelper
  
  # 
  # This helper method sets up the Data Array for the BA Spec Chart
  # 
  def ba_specs_chart_data
    @ba_specs.map do |spec|
      Rails.logger.debug "dd Charting - Spec Name: #{spec.name}"
      {
        name: spec.name.truncate(65, :separator => ' '),
        progress: spec.progress.sub('%', ''),
        internal_review_signoff: spec.internal_review_signoff ? true : false,
        external_review_signoff: spec.external_review_signoff ? true : false,
        final: spec.final_version ? true : false
      }
    end
  end
  
end



