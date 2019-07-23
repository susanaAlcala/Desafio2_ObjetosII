class Dog
    def initialize(data)
      @nombre  = data[:nombre]
      @raza = data[:raza]
      @color = data[:color]
    end
  
    def nombre
      @nombre
    end
    def raza
      @raza
    end
    def color
      @color
    end
  end
  
  
  data = {nombre: 'Beethoven',raza:'San Bernardo', color: 'Café'}
  dog = Dog.new(data)
  puts "mi perro se llama #{dog.nombre} es de color #{dog.color} y su raza es #{dog.raza}"