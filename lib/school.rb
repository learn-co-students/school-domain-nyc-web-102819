class School
    attr_accessor :name, :roster

    def initialize(name)
    @name = name 
    @roster = {}
    end

    def add_student (student_name, grade)
     roster[grade] ||= []
     roster[grade] << student_name
    end

    def grade (name)
     roster[name]
    end
    
    def sort 
     sorted ={}
     roster.each do |grade, name|
        sorted[grade] = name.sort 
    end
    sorted
    end
end
