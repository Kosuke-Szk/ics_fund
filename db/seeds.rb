User.find_or_create_by(id: 1) do |user|
  user.email = 'admin@indiancancersociety.org'
  user.password = 'indiancancersociety'
end