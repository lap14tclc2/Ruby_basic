def block_scope_demo
    x  = 100
    1.times do 
        puts x
    end 
end 

block_scope_demo

def block_scope_demo_2
    x = 100
    1.times do
        x = 200
    end 
    puts x
end 

block_scope_demo_2

def block_local_variable
    x = "Oringin x!"
    3.times do |i;x|
        x = i 
        puts "x in the block is now #{x}"
    end 
    puts "x after the block ended is #{x}"
end
block_local_variable