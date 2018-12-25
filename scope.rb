# class C 
#     def x(value_for_a, recursion=false)
#         a = value_for_a 
#         print "Here's the inspect-string for 'self': "
#         p self
#         puts "Here's a: "
#         puts a 
#         if recursion 
#             puts "Calling myself (recursion)....."
#             x("Second value for a")
#             puts "Back after recursion; here's a: "
#             puts a 
#         end 
#     end 
# end 

# c = C.new 
# c.x("First value for a", true)


# module M
#     class C 
#         X = 2
#         class D 
#             module N 
#                 X = 1
#             end 
#         end
#     end 
# end 

# puts M::C::D::N::X 
# puts M::C::X


# class Car 
#     @@makes = []
#     @@cars = {}
#     @@total_count = 0
#     attr_reader :make 
#     def self.total_count
#         @@total_count
#     end 

#     def self.add_make(make)
#         unless @@makes.include?(make)
#             @@makes << make 
#             @@cars[make] = 0
#         end
#     end 

#     def initialize(make)
#         if @@makes.include?(make)
#             puts "Create a new #{make}"
#             @make = make 
#             @@cars[make] += 1
#             @@total_count +=1 
#         else
#             raise "No much make: #{make}"
#         end
#     end

#     def make_mates
#         @@cars[self.make]
#     end 
# end     

# Car.add_make("Honda")
# Car.add_make("Ford")
# h = Car.new("Honda")
# f = Car.new('Ford')
# h2 = Car.new("Honda")
# puts "Counting cars of same make as h2..."
# puts h2.make_mates
# puts Car.total_count

#improve car
class Car 
    @@makes = []
    @@cars = {}
    attr_reader :make

    def self.total_count
        @total_count ||= 0
    end 

    def self.total_count=(n)
        @total_count = n
    end

    def self.add_make(make)
        unless @@makes.include?(make)
            @@makes << make 
            @@cars[make] = 0
        end
    end 

    def initialize(make)
        if @@makes.include?(make)
            puts "Creating a new Car: #{make}"
            @make = make 
            @@cars[make] += 1
            self.class.total_count += 1 
        else
            raise "No suck #{make}"
        end
    end

    def make_mates
        @@cars[self.make]
    end 
end

class Hybrid < Car
end 

Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new('Ford')
h2 = Car.new("Honda")
puts "Counting cars of same make as h2..."
puts Car.total_count

h3 = Hybrid.new("Honda")
h4 = Hybrid.new("Ford")
puts "#{h3.make_mates}"
puts "#{Hybrid.total_count}"
puts "#{Car.total_count}"