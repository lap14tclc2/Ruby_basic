ticket = Object.new

#define method for ticker object
def ticket.date
    return "01/02/03"
end

def ticket.venue
    return "Town Hall"
end

def ticket.event
    return "Author's reading"
end

def ticket.performer 
    return "Mark taiwan"
end

def ticket.seat 
    return "Second Balcony, row J, seat 12"
end

def ticket.price
    return 5.50
end

def ticket.available?
    return false
end

# print "This ticket is for: "
# print ticket.event + ", at "
# print ticket.venue + ", on "
# puts ticket.date  + "."
# print "The perfomer is "
# puts ticket.performer + "."
# print "The seat is "
# print ticket.seat + ", "
# print "and its costs $"
# puts "%.2f." % ticket.price

#improve the print statement
# print "This ticket is for: #{ticket.event}, at #{ticket.venue}.\n" + 
#         "The perfomer is #{ticket.performer}.\n" + 
#         "The seat is #{ticket.seat}, " + 
#         "and it costs $#{ticket.price}"

#let user get information using send() method
print "Information desired: "
request = gets.chomp

# if request == "venue"
#     puts ticket.send(request)
# else
#     puts "No such information available"
# end

#using respond_to?() to do the same task above

if ticket.respond_to?(request)
    puts ticket.send(request)
else
    puts "No such information available"
end