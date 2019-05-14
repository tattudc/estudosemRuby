a = true
b = false
c = true
d = false

exemplo1 = (a and b) or (b and c)
#False exemplo1
exemplo2 = (d or c) and not a
=begin
Resposta exemplo2 = True
Pois quando se introduz o sinal de atribuição (exemplo2 = (d or c) and not a), a variável 
exemplo2 irá receber true, que é o resultado de apenas parte da expressão (d or c), e não dela toda.
=end
exemplo3 = (a or b) or !c
#True exemplo3
exemplo4 = (3 < 4) or (a ^ c)
#True exemplo4
exemplo5 = (10 >= 10) and (a or b) or not d
#True exemplo5

puts "(a and b) or (b and c) = #{exemplo1}"
puts "(d or c) and not a = #{exemplo2}"
puts "(a or b) or !c = #{exemplo3}"
puts "(3 < 4) or (a ^ c) = #{exemplo4}"
puts "(10 >= 10) and (a or b) or not d = #{exemplo5}"

gets