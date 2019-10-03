produtos = {:mouse=>30.0, :monitor=>500.0, :fone=>90.0}
produtos.each_key do |produto|
  print "#{produto}, "
end

produtos = {:mouse=>30.0, :monitor=>500.0, :fone=>90.0}
produtos.each_value do |produto|
  print "#{produto}, "
end