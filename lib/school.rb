# code here!
class School

    attr_accessor :school, :roster, :student, :grade

    def initialize (school)
        @school = school
        @roster = {}
     end

    def add_student (student_name, grade)
        if @roster.include?(grade)
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
            roster[key]= value.sort
        end
    end
end