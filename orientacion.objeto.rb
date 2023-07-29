class Person
    def initialize(first, last, age, type)
      @first_name = first
      @last_name = last
      @age = age
      @type = type
    end

    def birthday
      @age += 1
    end
  end
  
  
  #se hace la refactorizacion del codigo llamado a la clase Student que hereda de Person y sobrescribe los métodos talk e introduce
  
  class Student < Person
    def talk
      puts "Aquí es la clase de programación con Ruby?"
    end
  
    def introduce
      puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  #se crea la instancia de la clase
  student = Student.new("Javier", "solis", 24, "Student")
  #llamamos  a los metodos  para que muestren en mensaje de la clases
  student.talk
  student.introduce
  
  
  #se hace la refactorizacion del codigo llamando a la  clase Teacher hereda de Person y sobrescribe los métodos talk e introduce
  class Teacher < Person
    def talk
      puts "Bienvenidos a la clase de programación con Ruby!"
    end
  
    def introduce
      puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  #se crea la instancia de la clase
  teacher = Teacher.new("Cristina", "Hernandez", 45, "Teacher")
  #llamamos  a los metodos  para que muestren en mensaje de la clases
  teacher.talk
  teacher.introduce
  
  #se hace la refactorizacion del codigo llamando a la clase Parent hereda de Person y sobrescribe los métodos talk e introduce
  
  class Parent < Person
    def talk
      puts "Aquí es la reunión de apoderados?"
    end
  
    def introduce
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  #se crea la instancia de la clase
  parent = Parent.new("Miguel", "Hormazabal", 55, "Parent")
  #llamamos  a los metodos  para que muestren en mensaje de la clases
  parent.talk
  parent.introduce