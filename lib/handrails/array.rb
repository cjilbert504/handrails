class Array
	def sum(start = 0)
		inject(start, &:+)
	end

	def odd_and_even
		odd, even = self.partition {|n| n.odd?}
	end
end