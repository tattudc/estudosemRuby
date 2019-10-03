class Pessoa
    def fala
        puts "Sei Falar"
    end

    def troca(roupa, lugar="banheiro")
        "trocando de #{roupa} no #{lugar}"
    end
end
p = Pessoa.new
puts p.fala
puts p.troca("camisa", "quarto")