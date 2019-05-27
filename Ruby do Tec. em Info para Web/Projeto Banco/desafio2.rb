require_relative "libdesafio2" # Não altere essa linha
require_relative "Atividade5Tarcisio"

def menuBanco()
    puts "Qual a operação você deseja fazer?"
    puts "1 - Ver Saldo"
    puts "2 - Depositar"
    puts "3 - Sacar"
    puts "4 - Transferir"
end

puts "Bem Vindo ao Banco do Tarcisio"
menuBanco()
opcaoMenu = gets.chomp.to_i

while opcaoMenu != 0
    if opcaoMenu == 1
        puts "Digite o numero da sua conta"
        xConta = gets.chomp.to_i
        if xConta > 0 && xConta < 6
            puts "Saldo da conta #{xConta} e R$ #{(localizar_conta(xConta)).saldo}"
            break
        else
            puts "Conta inválida"
            puts "Digite o numero da sua conta"
            xConta = gets.chomp.to_i
        end
    elsif opcaoMenu == 2
        puts "Qual o valor do deposito?"
        depositoConta = gets.chomp.to_i
        puts "Qual a conta de destino?"
        xConta = gets.chomp.to_i
        puts "Tem certeza que é a #{xConta}?"
        puts "Digite 1 para sim e 0 para não:"
        confirmaConta = gets.chomp.to_i
        while confirmaConta != 1
            puts "Qual a conta de destino?"
            xConta = gets.chomp.to_i
            puts "Tem certeza que é a #{xConta}?"
            puts "Digite 1 para sim e 0 para não:"
            confirmaConta = gets.chomp.to_i
        end
        saldoInicial = localizar_conta(xConta).saldo
        localizar_conta(xConta).depositar(depositoConta)
        puts "A conta #{xConta} de saldo R$ #{saldoInicial} recebeu um deposito de R$ #{depositoConta}"
        puts "Saldo final igual a R$ #{localizar_conta(xConta).saldo}"
        break   
    elsif opcaoMenu == 3
        puts "Qual o valor do saque?"
        saqueConta = gets.chomp.to_i
        puts "Qual a conta de destino?"
        xConta = gets.chomp.to_i
        puts "Tem certeza que é a #{xConta}?"
        puts "Digite 1 para sim e 0 para não:"
        confirmaConta = gets.chomp.to_i
        while confirmaConta != 1
            puts "Qual a conta de destino?"
            xConta = gets.chomp.to_i
            puts "Tem certeza que é a #{xConta}?"
            puts "Digite 1 para sim e 0 para não:"
            confirmaConta = gets.chomp.to_i
        end
        saldoInicial = localizar_conta(xConta).saldo
        localizar_conta(xConta).sacar(saqueConta)
        puts "A conta #{xConta} de saldo R$ #{saldoInicial} recebeu um saque de R$ #{saqueConta}"
        qtdNotas(saqueConta)
        puts "Saldo final igual a R$ #{localizar_conta(xConta).saldo}"
        break   
    elsif opcaoMenu == 4
        puts "Qual o valor da transferência?"
        transConta = gets.chomp.to_i
        puts "De qual conta?"
        xConta = gets.chomp.to_i
        puts "Tem certeza que é a #{xConta}?"
        puts "Digite 1 para sim e 0 para não:"
        confirmaConta = gets.chomp.to_i
        while confirmaConta != 1
            puts "Qual a conta de destino?"
            xConta = gets.chomp.to_i
            puts "Tem certeza que é a #{xConta}?"
            puts "Digite 1 para sim e 0 para não:"
            confirmaConta = gets.chomp.to_i
        end
        puts "Para qual conta?"
        xConta2 = gets.chomp.to_i
        puts "Tem certeza que é a #{xConta2}?"
        puts "Digite 1 para sim e 0 para não:"
        confirmaConta = gets.chomp.to_i
        while confirmaConta != 1
            puts "Para qual conta entao?"
            xConta2 = gets.chomp.to_i
            puts "Tem certeza que é a #{xConta2}?"
            puts "Digite 1 para sim e 0 para não:"
            confirmaConta = gets.chomp.to_i
        end
        saldoInicial = localizar_conta(xConta).saldo
        saldoInicial2 = localizar_conta(xConta2).saldo
        localizar_conta(xConta).transferir(transConta, (localizar_conta(xConta2)))
        puts "A conta #{xConta} de saldo R$ #{saldoInicial} transferiu um valor de R$ #{transConta} para"
        puts "a conta #{xConta2} de saldo R$#{saldoInicial2}"
        puts "Saldo final igual a R$ #{localizar_conta(xConta).saldo} na conta #{xConta}"
        puts "Saldo final igual a R$ #{localizar_conta(xConta2).saldo} na conta #{xConta2}"
        break   
    elsif opcaoMenu == 0
        puts "Saindo do Banco!"
    else
        puts "Opção inválida"
        menuBanco()
        opcaoMenu = gets.chomp.to_i
    end
end

puts "Para nova operação acesse o banco novamente"
gets