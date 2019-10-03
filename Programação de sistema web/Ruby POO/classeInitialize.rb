class Pessoa
    def initialize(nome)
        @nome = nome
    end

    def nome
        puts "#{@nome}"
    end
end

joao = Pessoa.new("João")
joao.nome
    