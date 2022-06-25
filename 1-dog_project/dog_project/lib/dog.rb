class Dog                   # => (Dog is a class) 
    def initialize (name, breed, age, bark, favorite_foods) # => (initialize is a method declares the instance variables)
        @name = name           # => (@name is an instance variable)
        @breed = breed         #instance variable starts with @ and be inside the initialize method
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end


# -------------------------------------------------------
def name          # => (name is a getter method to get the value of the instance variable @name)
    @name
end
# -------------------------------------------------------
def breed         # => (breed is a getter method to get the value of the instance variable @breed)
    @breed
end
# -------------------------------------------------------
def age           # => (age is a getter method to get the value of the instance variable @age)
    @age
end
# -------------------------------------------------------
def age=(num) # => (age= is a setter method to set the value of the instance variable @age)
    @age = num
end 
# ---------------------------------------------------------

def bark          # => (bark is a getter method to get the value of the instance variable @bark)
    if @age > 3   # => (if the dog's age is greater than 3)
        return @bark.upcase  # => (return the dog's uppercase bark)
    else
        return @bark.downcase # => (return the dog's lowercase bark)
    end
end
# -------------------------------------------------------

def favorite_foods # => (favorite_foods is a getter method to get the value of the instance variable @favorite_foods)
    @favorite_foods
end
# -------------------------------------------------------
def favorite_food?(item) # => (favorite_food? is a method to check if the item is in the favorite_foods array)
    @favorite_foods.map{|ele| ele.downcase}.include?(item.downcase)
end
# -------------------------------------------------------

end
