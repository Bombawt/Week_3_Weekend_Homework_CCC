require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

require('pry-byebug')

Ticket.delete_all
Film.delete_all
Customer.delete_all

# The one where Kira has too many data entries.
#
customer1 = Customer.new({'name' => "Monica Geller", 'funds' => 250})
customer1.save()

customer2 = Customer.new({'name' => "Rachel Green", 'funds' => 50})
customer2.save()

customer3 = Customer.new({'name' => "Phoebe Bouffay", 'funds' => 25})
customer3.save()

customer4 = Customer.new({'name' => "Ross Geller", 'funds' => 500})
customer4.save()

customer5 = Customer.new({'name' => "Chandler Bing", 'funds' => 275})
customer5.save()

customer6 = Customer.new({'name' => "Joey Tribianni", 'funds' => 40})
customer6.save()

film1 = Film.new({'title' => "Harry Potter: One Sequel Too Many", 'price' => 5})
film1.save()

film2 = Film.new({'title' => "Star Wars: Still Sucks", 'price' => 5})
film2.save()

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket1.save()

ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id})
ticket2.save()

ticket3 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film1.id})
ticket3.save()

ticket4 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film2.id})
ticket4.save()

ticket5 = Ticket.new({'customer_id' => customer5.id, 'film_id' => film2.id})
ticket5.save()

ticket6 = Ticket.new({'customer_id' => customer6.id, 'film_id' => film2.id})
ticket6.save()

# customer1.name = "Gunther"
# customer1.update()
#
# film1.title = "Another Saw Movie"
# film1.update()

# ticket1.customer_id = 5
# ticket1.update()
## This one doesn't work. I don't know why! :D






binding.pry
nil
