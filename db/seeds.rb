# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.find_or_create_by_name(name: 'Business Analyst')
Role.find_or_create_by_name(name: 'Technical Programmer')

Team.find_or_create_by_name(name: 'FAO IT - Team One')
Team.find_or_create_by_name(name: 'FAO IT - Team Two')
Team.find_or_create_by_name(name: 'Hobart IT - DAP')

User.find_or_create_by_name(first_name: 'Ilya',   last_name: 'Gvozdenko', email: 'test@email.com', telephone_number: '00 0000 0000')
User.find_or_create_by_name(first_name: 'Chris',  last_name: 'Martin',    email: 'test@email.com', telephone_number: '00 0000 0000')
User.find_or_create_by_name(first_name: 'Paul',   last_name: 'Nesbit',    email: 'test@email.com', telephone_number: '00 0000 0000')
User.find_or_create_by_name(first_name: 'Manicks',last_name: 'Mathaven',  email: 'test@email.com', telephone_number: '00 0000 0000')
User.find_or_create_by_name(first_name: 'Roger',  last_name: 'Bate',      email: 'test@email.com', telephone_number: '00 0000 0000')

UserRole.find_or_create_by_user_id(user_id: '1', role_id: '1')
UserRole.find_or_create_by_user_id(user_id: '2', role_id: '1')
UserRole.find_or_create_by_user_id(user_id: '3', role_id: '1')
UserRole.find_or_create_by_user_id(user_id: '4', role_id: '2')
UserRole.find_or_create_by_user_id(user_id: '5', role_id: '2')

UserTeam.find_or_create_by_user_id(user_id: '1', team_id: '1')
UserTeam.find_or_create_by_user_id(user_id: '2', team_id: '1')
UserTeam.find_or_create_by_user_id(user_id: '3', team_id: '2')
UserTeam.find_or_create_by_user_id(user_id: '4', team_id: '2')
UserTeam.find_or_create_by_user_id(user_id: '5', team_id: '1')

SoftwareRelease.find_or_create_by_name(name: 'December 2012 Major Release', date: Date.parse('03/12/12'), version: 'A')
SoftwareRelease.find_or_create_by_name(name: 'March 2013 Major Release',    date: Date.parse('03/03/13'), version: 'B')
SoftwareRelease.find_or_create_by_name(name: 'June 2013 Major Release',     date: Date.parse('22/06/13'), version: 'C')
