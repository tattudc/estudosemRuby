numero = rand(0..15)
  puts "Tente adivinhar o número escolhido pela máquina de 0 a 15"
  numero_chute = gets.to_i
  while numero != numero_chute do
    puts "Ooops! Tente novamente!"
    numero_chute = gets.to_i
  end
  puts "Parabens você acertou! O número é: #{numero}"