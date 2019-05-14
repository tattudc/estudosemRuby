puts "Entre com um numero para saber seu fatorial"
valor = gets.to_i
valor2 = valor
fatorial = 1
while valor > 1
  fatorial = fatorial * valor
  valor = valor - 1
end
puts "O fatorial de #{valor2} é #{fatorial}"