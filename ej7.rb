class Mypet
    attr_accessor :hungry , :satisfied ,:fullIntestine
    def initialize(name)
      @name = name
      @sleep = false
      @satisfied = 10
      @fullIntestine = 0
      puts @name + ' ' + 'nace'
  
    end
  
    def hungry?
      @satisfied <= 0
    end
  
    def needToGo?
     @fullIntestine == 10
   end
  
    def walk_to_the_bathroom
      puts "#{@name} camina al baño"
      @satisfied = @satisfied - 5
      @fullintestine = 0
      timeLapse()
    end
    def timeLapse
      if @satisfied > 0
  
      @satisfied = @satisfied - 1
      @fullIntestine = @fullIntestine + 1
      else
        if @sleep
          @sleep = false
          puts '¡Se despierta de repente!'
        end
        puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
        exit
      end
  
      if @fullIntestine >= 10
        @fullIntestine = 0
        puts '¡Uy! ' + @name + ' tuvo un accidente...'
      end
  
      if hungry?
        if @sleep
          @sleep = false
          puts '¡Se despierta de repente!'
        end
        puts 'El estomago de ' + @name + 'retumba...'
      end
      if needToGo?
        if @sleep
          @sleep = false
          puts 'Se despierta de repente!'
        end
        puts @name + ' hace la danza del baño...'
      end
      puts 'comida ' + '*' * @satisfied
      puts 'intestino ' + '*' * @fullIntestine
  end
  
  
  def eat
    @satisfied+= 3
    @fullIntestine= @fullIntestine + 1
    timeLapse()
  end
  def dormir
    @sleep = true
    puts "#{@name} se fue a dormir"
    timeLapse
  end
  
  end
  
  def menu
    puts '1) Camina al baño'
    puts '2) Comer'
    puts '3) Dormir'
    puts '4) Salir'
  
  end
  mascota = Mypet.new('jojo')
  var  = true
  while var
    menu()
    puts 'ingresa opcion'
    opcion =gets.chomp.to_i
    if opcion == 1
      mascota.walk_to_the_bathroom
    elsif opcion == 2
      mascota.eat
    elsif opcion == 3
      mascota.dormir
    elsif opcion == 4
      var  = false
  
    end
  end