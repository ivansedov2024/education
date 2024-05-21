
=begin

	1) написать предикатную функцию major?, которая проверяет совершеннолетие
	2) попробовать написать функцию add10!, которая добавляет каждому элементу 10

=end

def major?(age)
	if age >= 18
		return true
	end
	return false
end

ivan = 4
puts major?(ivan)


=begin

	class Array
	  def add10!
	    self.map! { |elem| elem + 10 }
	  end
	end

	arr = [1, 2, 3, 4, 100, 200]
	arr.add10!
	puts arr

=end
