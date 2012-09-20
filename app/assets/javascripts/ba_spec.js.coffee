  # 
  # This is really good. I may end up re-implementing something like this in not too distant future.
  # For this reason, I am leaving this section as commented. I will need to tweak this code such that
  # it automatically filters deliverables based on filtered milestones.
  # 

# jQuery ->
#   full_list_milestones   = milestones = $('#ba_spec_milestone').html()
#   full_list_deliverables = deliverables = $('#ba_spec_deliverable').html()
#   
#   $('#ba_spec_project').change ->
#     project = $('#ba_spec_project :selected').text()
#     
#     escaped_project = project.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
#     options = $(milestones).filter("optgroup[label='#{escaped_project}']").html()
#     
#     if options
#       $('#ba_spec_milestone').html(options)
#     else
#       $('#ba_spec_milestone').html(full_list_milestones)
# 
# 
#   $('#ba_spec_milestone').change ->
#     milestone = $('#ba_spec_milestone :selected').text()
# 
#     escaped_milestone = milestone.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
#     options = $(deliverables).filter("optgroup[label='#{escaped_milestone}']").html()
# 
#     if options
#       $('#ba_spec_deliverable').html(options)
#     else
#       $('#ba_spec_deliverable').html(full_list_deliverables)
# 
