module MyFirstModule
    def say_hello
        puts "hello"
    end
end


class ModuleTest
    include MyFirstModule
end

mt = ModuleTest.new
mt.say_hello