require_relative('./models/customer')
# require_relative('models/ticket')
require_relative('models/film')

require('pry-byebug')

Customer.delete_all
Film.delete_all


customer1 = Customer.new({
  'name' => 'James Mundie',
  'funds' => 20
})
customer2 = Customer.new({
  'name' => 'Alex Jones',
  'funds' => 30
})
customer3 = Customer.new({
  'name' => 'Craig Milne',
  'funds' => 5
})

customer1.save
customer2.save
customer3.save

# customer1.funds = 40
# customer1.update

# customer2.delete

# p Customer.all

film1 = Film.new({
  'title' => 'Matrix',
  'price' => 4
})
film2 = Film.new({
  'title' => 'The Hobbit',
  'price' => 10
})
film3 = Film.new({
  'title' => 'Die Hard',
  'price' => 8
})

film1.save
film2.save
film3.save

# film1.price = 40
# film1.update

# film2.delete
#
# p Film.all
