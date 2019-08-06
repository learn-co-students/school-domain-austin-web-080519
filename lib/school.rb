# code here!

class School
    attr_accessor :school, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student_name, grade)
        #@roster = {grade => [student_name]}
        if @roster.has_key?(grade) 
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name  
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value| 
            roster[key] = value.sort
        end
    end

end