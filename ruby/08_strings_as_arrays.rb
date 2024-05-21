
sample = "Hello Universe"
#         0123456789   13

puts sample[1]
puts sample[11]
puts sample[111]

p sample[111]

puts sample[3,3]
p sample[3,3]

# метод с вопросом на конце дает true|false

puts sample.include? "ver"
puts sample.include? "kill"

p sample.split('e')
p sample.gsub('e','!')
p sample.gsub('e','RUSSIA')

p sample.sub('e','!')

# sample.method  => применится на лету, не задевая sample
# sample.method! => применится на лету + изменит сам sample
# sample.method? => применится на лету, вернет true|false
# sample.gXXX    => применяется ко всем элементам sample

=begin

	https://t.ly/Fg1i8
	https://t.ly/Fg1i8
	https://t.ly/Fg1i8

	все строковые функции Ruby
	все строковые функции Ruby
	все строковые функции Ruby

	https://ru.wikibooks.org/wiki/Ruby
	https://ru.wikibooks.org/wiki/Ruby
	https://ru.wikibooks.org/wiki/Ruby

=end