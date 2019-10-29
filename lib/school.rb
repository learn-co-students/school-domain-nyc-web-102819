# code here!

class School
     attr_accessor :name, :roster


    def initialize(roster)
        @name = name
        @roster = {}
    end

    def add_student(name,grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end
    

    def sort
        sorted_students = {}

        roster.each do |grade, name|
            sorted_students[grade] = name.sort
        end  
        
        return sorted_students
    end




end
