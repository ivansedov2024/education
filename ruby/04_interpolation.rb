
val1 = 10
val2 = 20
sample = "Homer Simpson"

puts "Hello, #{sample}"
puts "#{val1} + #{val2} = #{val1 + val2}"
puts "Hello, " + sample + "! You its amazing!" 

# внутри двойных кавычек подстановка работает
print "Hello, #{val1}"
puts

# внутри одинарных кавычек подстановка не работает
print 'Hello, #{val1}'
puts

puts '#{val1} + #{val2} = #{val1 + val2}'