jQuery ->
  
  data = $('#ba_specs').data('ba-specs')
  return if !data                             # Exit Javascript if no source data is found
  
  # -------------------------------------------------------------------------------------------------------
  # Define Common Variables a.k.a Settings
  # 
  
  chart_width                = 780
  chart_padding              = 25
  chart_x_offset             = 450
  #================                           
  bar_height                 = 20
  bar_margin                 = 1
  #================  
  legend_h                   = 100
  legend_w                   = 270
  legend_padding             = 25
  legend_bar_h               = 15
  legend_bar_w               = 30
  legend_bar_margin          = 5
  #================
  legend_quality_gates       = [ "spec_draft", "spec_internal_signoff", "spec_external_signoff", "spec_final" ]
  legend_quality_description = [ "Draft specification", "Internally reviewed specification", "Externally reviewed specification", "Final specification" ]

  # This variable must be initialised after bar_height and chart_padding are aset
  chart_height               = data.length * (bar_height + bar_margin)  + chart_padding * 2
  
  x_scale = d3.scale.linear()
    .domain([0, 100])                                                   # Input Domain - 0% to 100%
    .range([15, chart_width - chart_x_offset - chart_padding])           # Output Range - Maximum chart area, minus the chart padding on each side

  # 
  # DEBUGGING ZONE
  # 
  # show_border = "border: 1px solid green"   # Turn on borders for debugging purposes
  show_border = ''
  # -------------------------------------------------------------------------------------------------------

  #
  # CHART CONTAINER
  #
  chart = d3.select('#chart_container')
    .append('svg')
        .attr(class: "chart")
        .attr(width: chart_width)
        .attr(height: chart_height)
        .attr('style', show_border)               # Debugging my chart zone

  #
  # CHART BARS
  #
  chart.selectAll('rect')
    .data(data)
      .enter()
        .append('rect')
          .attr(x: chart_x_offset)     
          .attr(y: (d, i) -> i * (bar_height + bar_margin) + chart_padding)
          .attr(width: (d) -> x_scale(d.progress))                                               
          .attr(height: bar_height)  
          .attr(class: (d) ->  
            if d.final then "spec_final" 
            else if d.external_review_signoff then "spec_external_signoff" 
            else if d.internal_review_signoff then "spec_internal_signoff" 
            else "spec_draft")
          .text((d) -> d.progress)           

  #
  # PROGRESS PERCENTAGE DISPLAYED AT THE END OF THE CHART BAR
  #
  chart.selectAll('.progress')
    .data(data)
      .enter()
        .append('text')
          .attr(class: 'progress')
          .attr(x: (d) -> chart_x_offset + x_scale(d.progress) - 5)
          .attr(y: (d, i) -> i * (bar_height + bar_margin) + chart_padding + (bar_height + bar_margin)/2)          
          .attr(fill: "white")
          .attr("dy", ".35em")
          .attr("text-anchor", "end")
          .text((d) -> d.progress)

  #
  # SPEC LABELS - SPEC NAME
  #
  chart.selectAll('.spec_label')
    .data(data)
      .enter()
        .append('text')
          # .attr(class: 'spec_label')
          .attr(x: chart_x_offset )          
          .attr(y: (d, i) -> i * (bar_height + bar_margin) + chart_padding + (bar_height + bar_margin)/2)          
          .attr("dx", -5)
          .attr("dy", ".35em")
          .attr("text-anchor", "end")
          .text((d) -> d.name)

  
  #        
  # CHART AXIS        
  #        
  x_axis = d3.svg.axis()
    .scale(x_scale)
    .orient("bottom")
    
  chart
    .append('g')
      .attr(class: 'axis')
      .attr(transform: "translate(" + (chart_x_offset) + ", " + (chart_height - chart_padding + 5) + ")")
    .call(x_axis)
    
  # 
  # LEGEND 
  # 
  legend = d3.select('#legend')
    .append('svg')
        .attr(class: "legend")
        .attr(width: legend_w)
        .attr(height: legend_h)
        .attr('style', show_border)               

  # 
  # LEGEND MINI BARS
  # 
  legend.selectAll('rect')
    .data(legend_quality_gates)
      .enter()
        .append('rect')
          .attr(x: legend_padding)
          .attr(y: (d, i) -> i * (legend_bar_h + legend_bar_margin) + legend_padding)
          .attr(width: legend_bar_w)
          .attr(height: legend_bar_h)
          .attr(class: (d) -> d)

  # 
  # LEGEND LABELS - TEXT
  # 
  legend.selectAll('.legend_labels')
    .data(legend_quality_description)
      .enter()
        .append('text')
          .attr(class: 'legend_labels')
          .attr(x: legend_padding + legend_bar_w + legend_bar_margin )          
          .attr(y: (d, i) -> i * (legend_bar_h + legend_bar_margin) + legend_padding + (legend_bar_h + legend_bar_margin)/2)
          .attr("dy", ".2em")
          .attr("text-anchor", "right")
          .text((d) -> d)          


# 
# COMMENTED CODE THAT MAY COME IN HANDY IN THE FUTURE. GOOD SOURCE FOR EXAMPLES
# 

# data =  [  
#           {progress: 10,  name: "Document Name 1"},
#         ]

