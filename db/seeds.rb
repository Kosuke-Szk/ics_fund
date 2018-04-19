User.find_or_create_by(id: 1) do |user|
  user.email = 'admin@indiancancersociety.org'
  user.password = 'indiancancersociety'
end

Gift.find_or_create_by(id: 1) do |gift|
  gift.date = '2018-04-24'
  gift.status = 0
end
Gift.find_or_create_by(id: 2) do |gift|
  gift.date = '2018-04-24'
  gift.status = 0
end
Gift.find_or_create_by(id: 3) do |gift|
  gift.date = '2018-04-24'
  gift.status = 0
end

Gift.find_or_create_by(id: 4) do |gift|
  gift.date = '2018-04-26'
  gift.status = 0
end
Gift.find_or_create_by(id: 5) do |gift|
  gift.date = '2018-04-26'
  gift.status = 0
end
Gift.find_or_create_by(id: 6) do |gift|
  gift.date = '2018-04-26'
  gift.status = 0
end

Substance.find_or_create_by(id:1) do |substance|
  substance.name = 'test1_product'
  substance.price = 1000
  substance.description = 'This is a test1.'
  substance.gift_id = 1
end
Substance.find_or_create_by(id:2) do |substance|
  substance.name = 'test2_product'
  substance.price = 2000
  substance.description = 'This is a test2.'
  substance.gift_id = 2
end
Substance.find_or_create_by(id:3) do |substance|
  substance.name = 'test3_product'
  substance.price = 1000
  substance.description = 'This is a test3.'
  substance.gift_id = 3
end
Substance.find_or_create_by(id:4) do |substance|
  substance.name = 'test4_product'
  substance.price = 1500
  substance.description = 'This is a test4.'
  substance.gift_id = 4
end
Substance.find_or_create_by(id:5) do |substance|
  substance.name = 'test5_product'
  substance.price = 2500
  substance.description = 'This is a test5.'
  substance.gift_id = 5
end
Substance.find_or_create_by(id:6) do |substance|
  substance.name = 'test6_product'
  substance.price = 3500
  substance.description = 'This is a test6.'
  substance.gift_id = 6
end