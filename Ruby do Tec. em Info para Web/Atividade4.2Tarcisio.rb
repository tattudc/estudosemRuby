puts "Digite um numero inteiro para saber se ele é primo ou não"
x = gets.to_i
aux = 0
1.step x do |n|
    if x % n == 0
      aux += 1
    end
end
if aux == 2
    puts "É primo!!"
else
    puts "Não é primo!!"
end