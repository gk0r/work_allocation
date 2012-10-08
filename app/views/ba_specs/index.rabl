collection @ba_specs, :root => 'aaData', :object_root => false
attributes :internal_review_date, :internal_review_signoff, :external_review_date, :external_review_signoff, :final_version

node(:name)     { |ba_spec| index_link ba_spec.try(:name)     , ba_spec }
node(:effort)   { |ba_spec| index_link ba_spec.try(:effort)   , ba_spec }
node(:progress) { |ba_spec| index_link ba_spec.try(:progress) , ba_spec }
node(:comments) { |ba_spec| index_link ba_spec.try(:comments) , ba_spec }

node(:deliverable)    {|ba_spec| index_link ba_spec.try(:deliverable).try(:name), ba_spec }
node(:project)        {|ba_spec| index_link ba_spec.try(:deliverable).try(:milestone).try(:project).try(:name), ba_spec }
node(:release)        {|ba_spec| index_link ba_spec.try(:deliverable).try(:milestone).try(:software_release).try(:name), ba_spec }
node(:user)           {|ba_spec| index_link ba_spec.try(:user).try(:name), ba_spec }
node(:link)           {|ba_spec| link_to("Edit", edit_ba_spec_path(ba_spec)) }