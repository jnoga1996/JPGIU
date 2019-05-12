def f
	5.upto(100) do |x|
		if (x % 5 == 0)
			yield x
		end
	end
end

puts "Wypisywanie:"
f { |x| puts "#{x}" }
puts
suma = 0
f { |x| suma += x}
puts "Suma = #{suma}"
