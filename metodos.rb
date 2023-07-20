# Definición del método para calcular el nuevo salario
def calcular_nuevo_salario(salario, incremento)
    # Cálculo del nuevo salario
    nuevo_salario = salario + (salario * (incremento / 100)) 
    # Redondeo del resultado a dos decimales
    nuevo_salario.round(2)
    end
    
    # Solicitar al usuario el salario actual del colaborador
    puts "Ingrese el salario actual del colaborador:"
    salario_actual = gets.chomp.to_f
    
    # Solicitar al usuario el porcentaje de incremento
    puts "Ingrese el porcentaje de incremento:"
    incremento = gets.chomp.to_f
    
    # Llamar al método para calcular el nuevo salario y mostrar el resultado
    nuevo_salario = calcular_nuevo_salario(salario_actual, incremento)
    puts "El nuevo salario del colaborador es: #{nuevo_salario}"
    

    
    
     # Definición del método para jugar "Adivina el número"
    def adivina_el_numero(numero_maximo)
      # Generación de un número aleatorio y se inicializa la variable numero_secreto
      numero_secreto = rand(1..numero_maximo) 
      #Se imprime un mensaje de bienvenida y se solicita al jugador que ingrese un número para intentar adivinar el número secreto.
      puts "¡Bienvenido a Adivina el número!"
      puts "Estoy pensando en un número del 1 al #{numero_maximo}."
      puts "Intenta adivinar cuál es:"
    # Inicialización de la variable intentos
      intentos = 0 
      #se inicia el ciclo while true que se ejecuta indefinidamente hasta que el jugador adivine el número
      while true
         # se obtener el número ingresado por el usuario
        intento = gets.chomp.to_i 
        #  se incrementa el contador de intentos en cada iteración
        intentos += 1 
    #se condiciona con if para indicar que si inte
        if intento == numero_secreto
          puts "¡Felicitaciones! ¡Has adivinado el número en #{intentos} intentos!"
           # Salir del ciclo while con el comando break cuando se adivine el número
          break
        elsif intento < numero_secreto
          puts "El número es mayor. Sigue intentando:"
        else
          puts "El número es menor. Sigue intentando:"
        end
      end
    end
    
    # Solicitar al usuario el número máximo para el juego
    puts "Ingrese el número máximo para el juego:"
    numero_maximo = gets.chomp.to_i
    
    # Llamar al método para jugar "Adivina el número"
    adivina_el_numero(numero_maximo)
    
    


    
    # Definición del método para calcular el IMC
    def calcular_imc(peso, altura)
      # Cálculo del IMC
      imc = peso / (altura**2) 
      # Redondeo del resultado a dos decimales
      imc.round(2) 
    end
    
    # Definición del método para clasificar la obesidad según el IMC
    def clasificar_obesidad(imc)
      #if y elsif para verificar en qué rango se encuentra el IMC y se muestra el mensaje correspondiente.
      if imc < 30
        "No tienes obesidad"
      elsif imc >= 30 && imc <= 34.9
        "Obesidad grado I: Moderado"
      elsif imc >= 35 && imc <= 39.9
        "Obesidad grado II: Severo"
      else
        "Obesidad grado III: Muy sever
    
    