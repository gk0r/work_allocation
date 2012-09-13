jQuery ->
  $('.milestone').parent().hide()
  milestones = $('#deliverable_milestone_id').html()
  
  $('#deliverable_project_id').change ->
    project = $('#deliverable_project_id :selected').text()
    
    escaped_project = project.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(milestones).filter("optgroup[label='#{escaped_project}']").html()
    
    if options
      $('#deliverable_milestone_id').html(options)
      $('.milestone').parent().show()
    else
      $('.milestone').parent().hide()
    
