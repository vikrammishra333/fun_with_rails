# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless User.any? 
	User.create(:first_name => 'admin', :last_name => 'thoughtwords', :email => 'admin@thoughtwords.com', :password => 'thoughtwords')
end

unless Role.any?
	Role.create([{:title => "Admin"}, {:title => "Blog Owner"}, {:title => "Blog Contributor"}, {:title => "Blog Subscriber"}])
end

unless UsersRole.any?
	UsersRole.create(:user_id => User.find_by_email('admin@thoughtwords.com').id, :role_id => Role.find_by_title('Admin').id, :active => true )
end
