n = 1
loop  do
    puts n
    n = n + 1 
    break if n > 9
end 

n = 1
loop do 
    puts n
    n = n + 1
    next unless n == 10
    break
end 