idade = 22
def maioridade(idade)
    case idade
    when 0..12
        "Criança"
    when 12..18
        "Adolescente"
    when 18..100
        "Adulto"
    end
end

puts maioridade(idade)