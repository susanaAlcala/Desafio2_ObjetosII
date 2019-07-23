class Student
    attr_accessor :name
    attr_reader :score
    def initialize(name,score)
    @name = name
    @score  = score
    end
    end
    names = %w(Alicia Javier Camila Francisco Pablo Josefina)
  
    students = []
  
    names.each_with_index do |name,i|
      students.push(Student.new(name,i.next))
  
    end
  
    scores =students.map do |student|
      "#{student.name} : #{student.score}"
    end
    puts scores