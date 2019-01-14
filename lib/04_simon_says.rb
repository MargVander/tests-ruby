def echo(a)
	return a
end

def shout(a)
	return a.upcase
end

def repeat(a, b=2)
	return (a + " ")*(b-1) + a
end

def start_of_word(a, b)
	return a[0...b]
end

def first_word(a)
	aword = a.split(" ")
	return aword.first
end

def titleize(a)
	arr =[]
	a = a.capitalize
	words = a.scan(/\w+/)

	words.each do |mot|
		if mot.size <= 3
			arr << mot
		else
			mot = mot.capitalize
			arr << mot
		end
	end
	return arr.join(" ")
end