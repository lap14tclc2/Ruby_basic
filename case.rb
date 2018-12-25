class Ticket
    attr_accessor :venue, :date 
    def initialize(venue, date)
        @venue = venue 
        @date  = date 
    end 

    def ===(other_ticket)
        puts "#{self}"
        self.venue == other_ticket.venue
    end 
end 

ticket1 = Ticket.new("Town Hall", "07/08/13")
ticket2 = Ticket.new("Conference Center", "07/08/13")
ticket3 = Ticket.new("Town Hall", "08/09/13")

puts "Ticket 1 for event: #{ticket1.venue}"
case ticket1
when ticket2
    puts "same location as ticket 2"
when ticket3
    puts "same location as ticket 3"
else 
    puts "No match"
end 

