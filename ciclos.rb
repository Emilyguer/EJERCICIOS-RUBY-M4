#impresion del mensaje 
puts "Números pares:"
#incializacion de la variable 
num = 0
#se incia el ciclo while siempre que num sea menor o igual a 20
while num <= 20
  #se aplica el metodo even para verificar si es numero par, si es par se imprime el puts
  puts num if num.even?
  #se incrementa num para que el ciclo while avance a través de los números dentro del rango especificado.
    num += 1
end

#impresion del mensaje 
puts "Números impares:"
#incializacion de la variable 
num = 0
#se incia el ciclo while siempre que num sea menor o igual a 20
while num <= 20
   #se aplica el metodo odd para verificar si es numero impar, si es impar se imprime el puts
  puts num if num.odd?
    #se incrementa num para que el ciclo while avance a través de los números dentro del rango especificado.
  num += 1
end

#impresion del mensaje 
puts "Tabla de multiplicar:"
#incializacion de la variable  i y se inicia el ciclo for
for i in 0..9
  #incializacion de la variable  j y se inicia el ciclo for
  for j in 0..9
    # se calcula el resultado de la multiplicación de i por j  
    resultado = i * j
    #se imprime el la multiplicacion y el resultado 
    puts "#{i} x #{j} = #{resultado}"
  end
end

#impresion del mensaje 
puts "Triángulo de asteriscos:"
#se inicializa la variable y se utiliza el metodo times para realizar el ciclo
10.times do |i|
  #se imprime * multiplicado por la suma de la variable i mas 1
  puts "*" * (i + 1)
end