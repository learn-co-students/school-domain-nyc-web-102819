class School
  attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name 
        @roster = {}
    end 

    def add_student(student_name, student_grade)
        @roster[student_grade] ||= []
        @roster[student_grade] << student_name
    end 

    def grade(student_grade)
      @roster[student_grade]
    end 

    def sort 
      sorted_roster = {}
      @roster.map do |student_grade, student_name| 
        sorted_roster[student_grade] = student_name.sort 
      end 
      sorted_roster 
    end 

end 