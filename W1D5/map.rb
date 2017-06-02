class Map

	def initialize
		@map = []
	end

	def assign(key, value)
		if @map.any? {|pair| pair[0] == key}	
			@map.each {|pair| pair[1] == value if pair[0] == key}
		else
			@map << [key, value] unless @map.any? {|pair| pair[0] == key}
		end
	end

	def lookup(key)
		@map.each {|pair| return pair[1] if pair[0] == key}
	end

	def remove(key)
		@map.delete_if {|pair| pair[0] == key}
	end

	def show
		@map
	end

end
