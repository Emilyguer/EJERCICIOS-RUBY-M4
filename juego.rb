# Seleccion jugador uno
puts "Bienvenido al juego piedra, papel, tijeras"
print "Elige una opcion jugador uno: "
jugador_uno = gets.chomp.downcase

# Verificar el argumento ingresado por el jugador uno
if !["piedra", "papel", "tijera"].include?(jugador_uno)
  puts "Argumento inválido: Debe ser piedra, papel o tijera."
  puts "Opciones disponibles: piedra, papel, tijera"
else
end

# Seleccion jugador dos computador
puts "-------------------------------------------"
puts "Bienvenido al juego piedra, papel, tijera"
print "Elige una opcion jugador dos: "
jugador_dos =  Random.rand(1..3)
jugador_dos = case Random.rand(1..3)
                    when 1
                      "piedra"
                    when 2
                      "papel"
                    when 3
                      "tijera"
                    end

# Mostrar la opción del jugador_dos
puts "Jugador_dos juega #{Random.rand (1..3)}."

# Verificar el argumento ingresado por el jugador dos
if !["piedra", "papel", "tijera"].include?(jugador_dos)
  puts "Argumento inválido: Debe ser piedra, papel o tijera."
  puts "Opciones disponibles: piedra, papel, tijera"
else
end


# Condición
if jugador_uno == jugador_dos
  puts "Es un empate 😭"
elsif (jugador_uno == "piedra" && jugador_dos == "tijeras") || (jugador_uno == "papel" && jugador_dos == "piedra") || (jugador_uno == "tijeras" && jugador_dos == "papel")
  puts "Ganaste jugador uno🤩"
else
  puts "Perdiste 🤬"
end