config = Hash.new
config["porta"] = 80
config["ssh"] = false
config["nome"] = "Caelum.com.br"
puts config.size
# => 3
puts config["ssh"]
# => false
