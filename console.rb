require_relative('./models/customer')
# require_relative('models/ticket')
# require_relative('models/film')

require('pry-byebug')

Customer.delete_all


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

p Customer.all
