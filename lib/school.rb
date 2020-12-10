require 'pry'

class School

    
    def initialize (name)
        @name = name
        @roster = {}
    end

    attr_reader :name
    attr_reader :roster
    
    def add_student(name, grade)
        if @roster.include?(grade)
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each do |grade, student|
            student.sort!
            #binding.pry
        end
    end

end

test_school = School.new("Test School")
test_school.add_student("joe", 9)
puts test_school.roster
#binding.pry
1