# RailsAdmin config file. Generated on August 26, 2012 18:50
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  # require 'i18n'
  # I18n.default_locale = :de

  config.current_user_method { current_admin } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, Admin

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, Admin

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Work Allocation', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = [BaSpec, Code, Deliverable, Project, Role, SoftwareRelease, Team, TechSpec, User, UserRole, UserTeam]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [BaSpec, Code, Deliverable, Project, Role, SoftwareRelease, Team, TechSpec, User, UserRole, UserTeam]

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  # config.model BaSpec do
  #   # Found associations:
  #     configure :deliverable, :belongs_to_association 
  #     configure :user, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :deliverable_id, :integer         # Hidden 
  #     configure :user_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :comments, :string 
  #     configure :progress, :integer 
  #     configure :internal_review_date, :date 
  #     configure :internal_review_signoff, :boolean 
  #     configure :external_review_date, :date 
  #     configure :external_review_signoff, :boolean 
  #     configure :final_version, :date 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Code do
  #   # Found associations:
  #     configure :deliverable, :belongs_to_association 
  #     configure :user, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :deliverable_id, :integer         # Hidden 
  #     configure :user_id, :integer         # Hidden 
  #     configure :comments, :string 
  #     configure :progress, :integer 
  #     configure :code_review_date, :date 
  #     configure :q_level_date, :date 
  #     configure :staged_date, :date 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Deliverable do
  #   # Found associations:
  #     configure :project, :belongs_to_association 
  #     configure :software_release, :belongs_to_association 
  #     configure :ba_specs, :has_many_association 
  #     configure :tech_specs, :has_many_association 
  #     configure :code, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :description, :string 
  #     configure :project_id, :string         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :software_release_id, :integer         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Project do
  #   # Found associations:
  #     configure :software_release, :belongs_to_association 
  #     configure :deliverables, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :dmr, :string 
  #     configure :software_release_id, :string         # Hidden 
  #     configure :warrant_status, :string 
  #     configure :work_order, :string 
  #     configure :rfc, :string 
  #     configure :timesheets_request_date, :string 
  #     configure :admin_ref, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Role do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model SoftwareRelease do
  #   # Found associations:
  #     configure :projects, :has_many_association 
  #     configure :deliverables, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :date, :date 
  #     configure :version, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Team do
  #   # Found associations:
  #     configure :users, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model TechSpec do
  #   # Found associations:
  #     configure :user, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :deliverable_id, :integer 
  #     configure :user_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :comments, :string 
  #     configure :progress, :integer 
  #     configure :internal_review_date, :date 
  #     configure :internal_review_signoff, :boolean 
  #     configure :final_version, :date 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model User do
  #   # Found associations:
  #     configure :role, :belongs_to_association 
  #     configure :team, :belongs_to_association 
  #     configure :projects, :has_many_association 
  #     configure :deliverables, :has_many_association 
  #     configure :ba_specs, :has_many_association 
  #     configure :tech_specs, :has_many_association 
  #     configure :code, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :username, :string 
  #     configure :first_name, :string 
  #     configure :last_name, :string 
  #     configure :telephone_number, :string 
  #     configure :role_id, :string         # Hidden 
  #     configure :team_id, :string         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model UserRole do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model UserTeam do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
end
