# puts "top level"
# puts "self is #{self}"

# class C 
#     puts "Class definition block"
#     puts "self is #{self}"

#     def self.x 
#         puts "class method C.x"
#         puts "self is #{self}"
#     end 

#     def m 
#         puts "instance method C.x"
#         puts "self is #{self}"
#     end 
# end

# puts C.x
# ins = C.new
# puts ins.m

# class C
#     def self.x
#         puts "Class method C"
#         puts "#{self}"
#     end
# end 

# class D < C
# end 
# D.x

# class C 
#     def self.no_dot
#         puts "adadad"
#     end 

#     no_dot 
# end 
# C.no_dot

class Person
    attr_accessor :first_name, :middle_name, :last_name

    def whole_name
        n = first_name + " "
        n << "#{middle_name} " if middle_name 
        n << "#{last_name}"
    end 
end 

david = Person.new 
david.first_name = "David"
david.last_name = "Black"
puts "David's whole name: #{david.whole_name}"
david.middle_name = "Alan"
puts "David's whole name: #{david.whole_name}"