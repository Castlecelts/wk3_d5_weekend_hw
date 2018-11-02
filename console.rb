require_relative('./models/customer')
require_relative('models/ticket')
require_relative('models/film')

require('pry-byebug')

Ticket.delete_all
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

ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })

ticket2 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film2.id
  })

ticket3 = Ticket.new({
  'customer_id' => customer3.id,
  'film_id' => film1.id
  })

ticket1.save
ticket2.save
ticket3.save

# ticket1.film_id = film2.id
# ticket1.update

# ticket2.delete
# p Ticket.all

# p customer1.films
p film1.customers
