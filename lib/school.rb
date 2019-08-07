# code here!
class School
    attr_accessor :roster, :student, :school, :grade
    

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student, grade)
        if @roster.include?(grade)
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
        @roster.each_value {|students| students.sort!}
    end

end

