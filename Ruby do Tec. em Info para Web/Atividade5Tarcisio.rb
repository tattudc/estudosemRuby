notas = [2, 5, 10, 20, 50, 100]
puts "Bem vindo ao Banco"
print "Notas disponíveis "
print  notas
print "\n"
puts "Por favor digite o numero que você quer sacar"
saque = gets.to_i
puts "Seu saque é de #{saque}"
notas = 0

while saque % 2 != 0 && saque % 5 != 0 && saque % 10 != 0 && saque % 20 != 0 && saque % 50 != 0 && saque % 100 != 0
  puts "Valor incorreto, o saque não pode sobrar resto"
  puts "Digite um valor para sacar:"
  saque = gets.to_i
  puts "Seu saque é de #{saque}"
  while saque != 0
    while saque > 1
      if saque >= 100
        notas = saque / 100
        saque = saque % 100
        puts "#{notas} notas de R$100"
      elsif saque >= 50
        notas = saque / 50
        saque = saque % 50
        puts "#{notas} notas de R$50"
      elsif saque >= 20
        notas = saque / 20
        saque = saque % 20
        puts "#{notas} notas de R$20"
      elsif saque >= 10
        notas = saque / 10
        saque = saque % 10
        puts "#{notas} notas de R$10"
      elsif saque >= 5
        notas = saque / 5
        saque = saque % 5
        puts "#{notas} notas de R$5"
      elsif saque >= 2
        notas = saque / 2
        saque = saque % 2
        puts "#{notas} notas de R$2"
      end
  end
end
  puts "Por favor digite o numero que você quer sacar"
  saque = gets.to_i
  notas = 0
  puts "Seu saque é de #{saque}"
end
puts "Encerrando programa"