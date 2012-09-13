jQuery ->
  $('.milestone').parent().hide()
  
  milestones = $('#deliverable_milestone_id').html()
  console.log(milestones)
  
  $('#deliverable_project_id').change ->
    project = $('#deliverable_project_id :selected').text()
    console.log(project)
    
    escaped_project = project.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(milestones).filter("optgroup[label='#{escaped_project}']").html()
    
    if options
      $('#deliverable_milestone_id').html(options)
      $('.milestone').parent().show()
    else
      $('.milestone').parent().hide()
    
    
  
  # $('#deliverable_milestone_id').parent().hide()
  # milestones = $('#deliverable_milestone_id').html()
  # $('#deliverable_project_id').change ->
  #   projects = $('#deliverable_project_id :selected').text()
  #   escaped_projects = projects.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
  #   options = $(milestones).filter("optgroup[label='#{escaped_projects}']").html()
  #   if options
  #     $('#deliverable_milestone_id').html(options)
  #     $('#deliverable_milestone_id').parent().show()
  #   else
  #     $('#deliverable_milestone_id').empty()
  #     $('#deliverable_milestone_id').parent().hide()
  