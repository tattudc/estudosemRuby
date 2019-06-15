#class contato
class Contato
attr_accessor :nome
attr_accessor :telefone
  def initialize(nome, telefone)
    @nome = nome
    @telefone = telefone
  end

  def ler_nome
    return @nome
  end

  def ler_telefone
    return @telefone
  end

  def mudar_dados(nome, telefone)
    @nome = nome
    @telefone = telefone
  end
end