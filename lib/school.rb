# code here!
class School
  
    def initialize(name)
      @name = name
      @roster = {}
    end
    
    def roster
      @roster
    end
    
    def add_student(student_name, grade)
      if @roster[grade]
        @roster[grade] << student_name
        return @roster
      else
        @roster[grade] = [student_name]
        return @roster
      end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_students = {}
        @roster.each do |key, value|
            sorted_students[key] = value.sort
        end
        return sorted_students
    end
  end