class School
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, student_grade_)
        @roster[student_grade_] ||= []
        @roster[student_grade_] << student_name      
    end

    def grade(student_grade_)
        @roster[student_grade_]
    end    

    def sort
        new_hash = {}
        @roster.each do |x, y| 
            new_hash[x] = y.sort 
        end 
        new_hash
    end  

end
