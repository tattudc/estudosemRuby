#Faça um script em Ruby que leia um número n e mostre a tabuada de multiplicação de 1 a 10 deste número (com laço de repetição)

puts "Digite um número: "
numero = gets.chomp.to_i

(1..10).each do |i|
  puts "#{numero} x #{i} = #{numero * i}"
end

gets
