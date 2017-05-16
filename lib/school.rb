# code here!
require "pry"

class School
  attr_accessor :roster, :grade
  attr_reader :name


  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
     @roster
  end

  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade] << student_name
    else
        @roster[grade] = []
        @roster[grade] << student_name
    end
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students_array|
      students_array.sort!
    end
    @roster
  end

end
