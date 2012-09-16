# 
# This Rake task will import users from a comma separated file.
# 
# CSV Specs:
# 1. No headers.
# 2. Adhere to the following format:
#   * First Name
#   * Last Name
#   * Username
#   * Email
#   * Telephone Number
#   * Role IDs
#   * Team IDs
# 


require 'csv'    

task :import_users => :environment do 

  csv_text = File.read(Rails.root + 'lib/tasks/my.csv')
  csv = CSV.parse(csv_text, :headers => false)
  csv.each do |row|
    
    User.create(
      :first_name       => row[0],
      :last_name        => row[1],
      :username         => row[2],
      :email            => row[3],
      :telephone_number => row[4],
      :role_ids         => row[5],
      :team_ids         => row[6])
    
  end
end
