=begin
ALUNO: TARCISIO DANTAS CÂMARA
Crie um script em Ruby que que leia vários números inteiros e imprima a quantidade de números primos dentre os números que foram digitados. O script acaba quando se digita um número menor ou igual a 0 (zero).
=end
#Entrar variáveis
primos = []
i = 0

#entrar array e conferir
puts "Digite numeros para ver se é primo ou não, se quiser sair digite 0 ou menos"
x = gets.chomp.to_i
y = 1
z = 0
while x >= y do
  if x > 2 && x % 2 == 0
    break
  end
  if x % y == 0
    z = z + 1
    y = y + 1
  else
    y = y + 1
  end
  if z == 2
    primos[i] = x
    i = i + 1
    break
  end
end
while x > 0
  puts "Digite numeros para ver se é primo ou não, se quiser sair digite 0 ou menos"
  x = gets.chomp.to_i
  y = 1
  z = 0
while x >= y do
  if x > 2 && x % 2 == 0
    break
  end
  if x % y == 0
    z = z + 1
    y = y + 1
  else
    y = y + 1
  end
  if z == 2
    primos[i] = x
    i = i + 1
    break
  end
end
end

#ler array
i = 0
while i < primos.length
  print "#{primos[i]} "
  i = i + 1
end

