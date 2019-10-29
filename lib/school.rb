# code here!
class School

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if @roster.key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @new_hash = {}
        @roster.each do |key, value|
            @new_hash[key] = value.sort
        end
        @new_hash
        # @sorted_hash = @sorted_roster.to_h
        # @sorted_hash
    end
end