class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    return "Hafa Adai, my name is #{@name} and I'm #{@age} years old."
  end
end

class Student < Person
  attr_accessor :grade

  def initialize(name, age, grade)
    super(name, age)
    @grade = grade
  end
  
  def introduce
    super + " And I'm grade #{@grade}."
  end
end

class Teacher < Person
  attr_accessor :subject

  def initialize(name, age, subject)
    super(name, age)
    @subject = subject
  end
  
  def introduce
    super + " And I teach #{@subject}."
  end
end

# person = Person.new("Lanna", 23)
# p person.name
# p person.age
# p "-" * 50
# # p person.introduce
# student = Student.new("Junior", 26, 12)
# p student.name
# p student.age
# p student.grade
# p "-" * 50
# # p student.introduce
# teacher = Teacher.new("Ron", 26, "Computer Science")
# p teacher.name
# p teacher.age
# p teacher.subject
# p "-" * 50
# # p teacher.introduce