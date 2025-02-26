# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_accessor :name, :color

    def initialize(name, color = "silver")
        @name = name
        @color = color
    end

    def say
        "*~* Hello hello *~*"
    end

end




#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_accessor :name, :pet, :thirsty

    def initialize(name, pet = "bat", thirsty = true)
        @name = name 
        @pet = pet
        @thirsty = thirsty
    end

    def drink 
        @thirsty = false
    end

end






#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_accessor :name, :rider, :color, :hungry

    def initialize(name, rider, color, hungry = true)
        @name = name
        @rider = rider
        @color = color
        @hungry = hungry
    end

    def eat(times_eaten)
        if times_eaten >= 4
            @hungry = false
        else
            @hungry = true
        end
    end

end





#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit 
    attr_accessor :name, :disposition, :age, :has_ring, :is_adult, :is_old

    def initialize(name, disposition, age = 0, has_ring = false, is_old = false)
        @name = name
        @disposition = disposition
        @age = 0
        @has_ring = has_ring
        @is_old = is_old
    end


    def celebrate_birthday
        @age += 1
        if age >= 33 && age < 101
            @is_adult = true
        elsif age >= 101
            @is_old = true
        end

    end




    def ring
        if name == "Fredo" 
            @has_ring = true
        else
            @has_ring = false
        end

    end




end


