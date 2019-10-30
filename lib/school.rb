class School
    attr_accessor :grade

    def initialize(school)
      @school = school
      @roster = {}
    end
    
    def roster
      @roster
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(student_grade)
       @roster[student_grade]
    end 
     
    def sort
        sorted_students = {}
        roster.each do |grade, students|
        sorted_students[grade] = students.sort
        end 
        sorted_students
    end

  end