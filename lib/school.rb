# code here!

class School 
    attr_accessor :roster, :name


    def initialize(name)
        @name = name
        @roster = {}


    end

    def add_student(name, grade)
        if @roster.include?(grade) 
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end


    def grade(grade)
        @roster[grade]

    end

    def sort 
        sorted = {}
        @roster.each do |key, val|
            sorted[key] = val.sort
        end
        sorted
    end


end