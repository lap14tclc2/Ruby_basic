# class Ticket
#     def initialize(venue, date) 
#         @venue = venue 
#         @date = date 
#     end

#     # def set_price(amount)
#     #     @price = amount
#     # end

#     #another set method
#     def price=(amount)
#         #filtering
#         if (amount * 100).to_i == amount * 100
#             @price = amount
#         else
#             puts "The price seems to be malformed"
#         end
#     end 

#     def venue
#         @venue
#     end

#     def date 
#         @date
#     end 

#     def price 
#         @price
#     end

#     def event
#         return "Can't really be specified yet..."
#     end
# end


# th = Ticket.new("Town hall", "12/13/2012")
# cc = Ticket.new("Convention Center", "4/12/2014")
# th.price = (32)
# puts "Town hall ticket price: #{th.price}"
# puts "We are created 2 tickets"
# puts "The first is for a #{th.venue} event on #{th.date}"
# puts "The second is for a #{cc.venue} event on #{cc.date}"


# class Person
#     def initialize
#         puts "Create a new person"
#     end

#     def set_name(string)
#         puts "Setting a person's name..."
#         @name = string
#     end 

#     def get_name()
#         puts "Returnning a person's name..."
#         return @name 
#     end
# end

# joe = Person.new
# joe.set_name("Joe")
# puts joe.get_name


#ỉmprove getter/setter method

class Ticket
    #constants 
    VENUES = ["Convention Center", "Town house", "Fairgrounds"]

    attr_reader :venue, :date 
    attr_accessor :price

    def initialize(venue, date)
        if VENUES.include?(venue)
            @venue = venue
        else
            raise ArgumentError, "Unknown venue #{venue}"
        end 
        @date = date
    end 
end 


#singleton method of Class obj
# def Ticket.most_expensive(*tickets)
#     tickets.max_by(&:price)
# end

# th = Ticket.new("Town house", "12/23/2015")
# cc = Ticket.new("Convention Center","12/13/14/")
# fg = Ticket.new("Fairgrounds", "13/14/15/")
# th2 = Ticket.new("Town house", "12/23/2015")
# th.price = 63.00
# cc.price = 10.00
# fg.price = 20.00
#highest = Ticket.most_expensive(th,cc,fg)
#puts "The highest ticket is #{highest.venue}"
# v =  Ticket::VENUES
# v << "high School"
# v = "ad"
# puts v
#inheritance 

class Publication
    attr_accessor :publishter
end

class Managzine < Publication
    attr_accessor :editor
end

mag = Managzine.new
# mag.editor = 'Joe Smith'
# mag.publishter = "David A. Black"
# puts "Mag is publisher by #{mag.publishter} and editor by #{mag.editor}"

puts mag.is_a?(Managzine)
puts mag.is_a?(Publication)