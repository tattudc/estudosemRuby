class Pessoa
  attr_accessor :nome
  attr_accessor :peso
  attr_accessor :altura

  def initialize(nome, peso, altura)
    @nome = nome
    @peso = peso
    @altura = altura
  end

  def imc (peso, altura)
  imc = peso/ (altura * altura)
    if imc < 17
      puts "Muito abaixo do peso"
    elsif imc >= 17 && imc < 18.49
      puts "Abaixo do peso"
    elsif imc >= 18.49 && imc < 24.99
      puts "Peso normal"
    elsif imc >= 24.99 && imc < 29.99
     puts "Acima do peso"
    elsif imc >= 29.99 && imc < 34.99
      puts "Um pouco obeso"
    elsif imc >= 34.99 && imc < 39.99
      puts "Obesidade severa"
    elsif imc >= 39.99
      puts "Obesidade morbida"
    end
  end
  
end