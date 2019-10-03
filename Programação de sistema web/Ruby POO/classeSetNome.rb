class Pessoa
    def muda_nome(novo_nome)
        @nome = novo_nome
    end

    def diz_nome
        puts "meu nome é #{@nome}"
    end 
end
p = Pessoa.new
p.muda_nome("Joao")
p.diz_nome