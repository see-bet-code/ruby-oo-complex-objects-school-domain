# code here!
class School
    attr_accessor :roster, :name

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end
    
    def add_student(student, grade)
        @roster[grade] ||= [] 
        @roster[grade] << student
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
        @roster.sort.to_h
    end
end