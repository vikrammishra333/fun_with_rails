# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Role.any?
  Role.create([{:title => "Admin"}, {:title => "Author"}, {:title => "Subscriber"}])
end

unless User.any? 
  User.create(:first_name => 'Site', :last_name => 'Admin', :email => 'admin@fullstackror.com', :password => 'fullstackror', :role_id => Role.find_by_title('Admin').id)
end