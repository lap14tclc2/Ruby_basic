# module M
#     def report
#         puts "'report' method in module M"
#     end
# end

# class C
#     include M 
# end 

# class D < C 
# end 

# obj = D.new 
# obj.report

class Bicycle
    attr_reader :gears, :wheels, :seats
    def initialize(gears = 1, wheels=0)
        @wheels = wheels
        @seats = 1
        @gears = gears 
    end 

end

class Tandem < Bicycle
    def initialize(gears)
        super
        @seats = 2
    end
end 

b = Bicycle.new(5,3)
puts b.gears
puts b.wheels
puts b.seats