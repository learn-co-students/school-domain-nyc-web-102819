require "pry"

class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
            return @roster
        else 
            @roster[grade] = [name]
        return @roster
        end
    end

    def grade(number)
       return @roster[number]
    end

    def sort
        new_hash = {}
        @roster.each do |key, value|
            new_hash[key] = value.sort
        end
        return new_hash
    end


end

    
