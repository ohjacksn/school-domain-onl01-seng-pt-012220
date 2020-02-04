class School
    attr_reader :name, :roster
    
    def initialize(school_name)
        @name = name
        @roster= {}
    end

    def add_student(student, grade)
        @roster[grade] = [] if @roster[grade] == nil
        @roster[grade].push student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        hash = {}
        @roster.each {|grade, students| hash[grade] = students.sort}
        hash
    end
end

