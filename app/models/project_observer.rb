class ProjectObserver < ActiveRecord::Observer

  def after_commit(record)
    # Milestone.create(:project_id => record.project_id, :software_release_id => record.software_release_id )
    Rails.logger.debug "dd #{record.id} and #{record.software_release_ids}"

    record.software_release_ids.each do |release_id|
      Milestone.find_or_create_by_project_id_and_software_release_id(:project_id => record.id, :software_release_id => release_id)
    end
  end
  
end
