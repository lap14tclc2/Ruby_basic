require_relative "stacklike"
class Stack 
    include StackLike
end

s = Stack.new
s.add_to_stack("item one")
s.add_to_stack("item two")
s.add_to_stack("item three")
puts "current item in stack:"
puts s.stack
taken = s.take_from_stack
puts "remove this oject: "
puts taken
puts "now in stack:"
puts s.stack