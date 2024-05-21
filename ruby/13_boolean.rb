
=begin

	1) == равны между собой
	2) && операция логическое "и"
	2) || операция логическое "или"
	2) ! операция логическое "не"

=end

sample1 = (1 == 1) && ("Paris" == "Paris")
puts "sample1 = #{sample1}"

sample2 = (1 == 1) && true
puts "sample2 = #{sample2}"

sample3 = true && false && true
puts "sample3 = #{sample3}"

sample4 = (1 != 2) && (2 == 2)
puts "sample4 = #{sample4}"

sample5 = !true
puts "sample5 = #{sample5}"