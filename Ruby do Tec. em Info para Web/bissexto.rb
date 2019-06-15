=begin
ALUNO: TARCISIO DANTAS CÂMARA
Crie uma função que recebe um número inteiro como parâmetro, representando um ano, e retorna um valor lógico. A função deve retornar VERDADEIRO quando o ano for bissexto, e FALSO caso contrário. Um ano é bissexto se ele for divisível por 400; ou se ele for divisível por 4 e não por 100.
=end

puts "Digite um ano"
ano = gets.chomp.to_i

def bissexto(ano)
  if ano % 100 != 0 && ano % 4 == 0 || ano % 400 == 0
    puts "Verdadeiro"
  else
    puts "Falso"
  end
end
bissexto(ano)
