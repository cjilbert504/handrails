class Array
	def sum(start = 0)
		inject(start, &:+)
	end

	def self.odd_and_even_numbers
		odd, even = self.partition {|i| i.odd? }
	end
end