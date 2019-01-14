def who_is_bigger(a, b, c)
	if a == nil || b == nil || c == nil
		return "nil detected"

	elsif [a, b, c].max == a
		return "a is bigger"
	elsif [a, b, c].max == b
		return "b is bigger"
	elsif [a, b, c].max == c
		return "c is bigger"
	end
end

def reverse_upcase_noLTA(a)
	return a.reverse.upcase.tr('L', '').tr('T', '').tr('A', '')
end

def array_42(arr)
	return arr.include?(42)
end

def magic_array(arr)
	return arr.flatten.sort.delete_if { |i| i % 3 == 0}.uniq.collect { |e| e*2 }
	
end
