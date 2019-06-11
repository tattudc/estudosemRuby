require_relative "Pessoa"

joao = Pessoa.new("Joao", 150, 1.70)
puts joao.nome
puts joao.peso
puts joao.imc(joao.peso, joao.altura)