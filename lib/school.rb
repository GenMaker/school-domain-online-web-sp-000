require "pry"

class School
  def initialize (school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
  @roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
  #binding.pry
    roster.include?(grade) == false
    roster[grade] = []
    end
      @roster[grade] << name
  end

  def grade (number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade]= name.sort
    end
  end
end



class School
  attr_accessor :name, :roster, :mascot

  def initialize(name)
    @name = name
    @roster = {}
    @mascot = []
  end

  def add_mascot(name)
    @mascot = "#{name}"
  end

  def add_student(student_name, grade)
  binding.pry
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  # this method should arrange the students in each grade by alphabetical order
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end


end
