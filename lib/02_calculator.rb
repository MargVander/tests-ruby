def add(nb1,nb2)
	return nb1 + nb2
end

def subtract(nb1,nb2)
	return nb1 - nb2
end

def sum(arr)
	return arr.sum
end

def multiply(nb1,nb2)
	return nb1 * nb2
end

def power(nb1,nb2)
	return nb1**nb2
end

def factorial(nb)
	result = Array.new
	if nb == 0
		return 1
	elsif nb > 0
		while nb>= 1
			result << nb
			nb = nb - 1
			end
			return result.inject(:*)
		end
	end


