
=begin

	1) в Ruby реализован DSL (Domain-Specific Language)
	2) рассмотрим простой (нет) пример про DSL конфигурации

=end

class Config
  def initialize
    @settings = {}
  end

  def set(name, value)
    @settings[name] = value
  end

  def get(name)
    @settings[name]
  end

  def self.build(&block)
    config = new
    config.instance_eval(&block)
    config
  end
end

config = Config.build do
  set :api_key, '123456'
  set :timeout, 30
end

puts config.get(:api_key)
puts config.get(:timeout)

=begin

	class Config                       # [01] 
	  def initialize                   # [02] 
	    @settings = {}                 # [03] 
	  end                              # [04] 

	  def set(name, value)             # [05] 
	    @settings[name] = value        # [06] 
	  end                              # [07] 

	  def get(name)                    # [08] 
	    @settings[name]                # [09] 
	  end                              # [10] 

	  def self.build(&block)           # [11] 
	    config = new                   # [12] 
	    config.instance_eval(&block)   # [13] 
	    config                         # [14] 
	  end                              # [15] 
	end                                # [16] 

	config = Config.build do           # [17] 
	  set :api_key, '123456'           # [18] 
	  set :timeout, 30                 # [19] 
	end                                # [20] 

	puts config.get(:api_key)          # [21] 
	puts config.get(:timeout)          # [22] 

		01-16 строки определение класса Config

		02-04 строки инициализация новоего объекта
			@settings = пустой хэш

		05-07 строки сохранение новой пары в хэше
			==> name (имя параметра), value (значение параметра)
			<== кладем пару к хэш @settings

		08-10 строки извлечение значения определенного параметра из хэша
			==> name (имя параметра)
			<== значение параметра

		11-15 строки это метод класса, создаем новый объект Config из блока кода
		    config = new                   # [12] создаем новый объект класса Config
		    config.instance_eval(&block)   # [13] все, что передали из программы**, исполнить
		    config                         # [14] вернуть полученный объект назад в основную программу

			**(что передали из программы)
			set :api_key, '123456'         # [18] вызвать `set(:api_key, 123456)`
			set :timeout, 30               # [19] вызвать `set(:timeout, 30)`

		17-20 строки это создание экземпляра класса через передачу методу build блока кода
			==> блок кода
			<== экземпляр класса

		21-22 строки это вывод на экран значений параметров объекта config

=end

=begin

	3) в чем удобство такого представления конфигурации?
		3-1) читаемость и выразительность
		3-2) инкапсуляция логики работы
		3-3) гибкость и расширяемость
		3-4) простота использования
		3-5) безопастность (вы работаете только с методами, а не данными)

=end
