#classe Agenda
load 'Contato.rb'
class Agenda < Contato
attr_accessor :contatos
    def initialize(contatos)
      super(nome, telefone)
      @contatos = Array.new
    end

    def adicionar(nome, telefone)
    @contatos << Contato.new(nome, telefone)
    end

    def remover(nome, telefone)
     contatos.delete(nome, telefone)
    end

    def buscar_por_nome(nome)
      @contatos.each do |contato|
        if contato.nome == nome
          return contato
        end
      end
      return nil
    end

    def buscar_por_telefone(telefone)
      @contatos.each do |contato|
        if contato.telefone == telefone
          return contato
        end
      end
        return nil
    end
end

contato = Contato.new("Joao", 99991111)
puts contato.nome
puts contato.telefone
contato.mudar_dados("Maria", 88882222)
puts contato.nome
puts contato.telefone
#contato.adicionar(contato.nome, contato.telefone)



=begin
ALUNO = TARCISIO DANTAS CÂMARA
Crie as classes Contato e Agenda, conforme descritas abaixo, e as envie através dessa questão.

Classe Contato
Crie uma classe Contato, que represente um contato de uma agenda telefônica, com os atributos nome e telefone, seguindo as orientações abaixo.

Ao criar um objeto da classe Contato, é necessário informar o nome e o telefone do contato;
A classe Contato deve ter métodos que permitam ler e modificar seus atributos.
Classe Agenda
Crie uma classe Agenda, que represente uma agenda telefônica, com apenas um atributo que permita armazenar um conjunto de objetos da classe Contato, e que siga as orientações abaixo.

A classe Agenda deve ter um método chamado "adicionar" (sem aspas), que recebe um objeto da classe Contato como parâmetro, e o adiciona ao conjunto de contatos da agenda;
A classe Agenda deve ter um método chamado "remover" (sem aspas), que recebe um nome como parâmetro, remove da agenda o objeto da classe Contato com o nome informado e retorna verdadeiro. Caso nenhum contato seja encontrado com o nome informado, o método deve retornar falso;
A classe Agenda deve ter um método chamado "buscar_por_nome" que recebe um nome como parâmetro. Esse método deve procurar e retornar o objeto da classe Contato com o nome informado. Caso o objeto não seja encontrado, retorna falso;
A classe Agenda deve ter um método chamado "buscar_por_telefone" que recebe um telefone como parâmetro. Esse método deve procurar e retornar o objeto da classe Contato com o telefone informado. Caso o objeto não seja encontrado, retorna falso.
=end