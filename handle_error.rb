# print "Enter the number: "
# n = gets.to_i

# begin
#     result = 100 / n 
# rescue
#     puts "Your number didn't work. Was is zero?"
#     exit
# end 
# puts "100/#{n} is #{result}"


#using rescue inside method and code block

# def open_user_file
#     print "File to open: "
#     filename = gets.chomp
#     begin
#         fh = File.open(filename)
#     rescue
#         puts "Couldn't open your file"
#         return
#     end 
#     yield fh
#     fh.close 
# end 

#using ensure clause
def line_from_file(filename, substring)
    fh = File.open(filename)
    begin
        line = fh.gets
        raise ArgumentError unless line.include?(substring)
    rescue ArgumentError
        puts "Invalid line!"
        raise
    ensure
        fh.close
    end
    return line
end 

# open_user_file

#custom exception
def fussy_method(x)
    raise ArgumentError, "I need a number under 10" unless x < 10
end 

# begin
#     fussy_method(20)
# rescue ArgumentError
#     puts "That was not acceptable number"    
# end

begin
    fussy_method(20)
rescue ArgumentError => e
    puts 'Thats was not acceptable number'
    puts "Here is  the backtrace for this exception"
    puts e.backtrace
    puts "message: "
    puts e.message
end 