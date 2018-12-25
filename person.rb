class Person
    PEOPLE = []
    attr_reader :name, :hobbies, :friends

    def initialize(name)
        @name = name 
        @hobbies = []
        @friends = []
    end 
    
    def has_hobby(hobby)
        @hobbies << hobby 
    end 

    def has_friend(friend)
        @friends << friend 
    end 

    def self.method_missing(m, *args)
        method = m.to_s
        # check whether method include 'all_with_' string or not
        if method.start_with?("all_with_")
            #get method name by substring from index 10 to last index
            atrr = method[9..-1]
            if self.public_method_defined?(attr)
                PEOPLE.find_all do |person|
                    person.send(attr).include?(args[0])
                end 
            else 
                raise ArgumentError, "Can't find #{attr}"
            end 
        else
            super
        end 
    end 
end 