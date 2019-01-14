# def translate(a)
# 	if a =~ /\A[aeiouy]\w*/
# 		return a + "ay"
# 	elsif a =~ /\A[bcdfghjklmnpqstvwxz]\w*/
# 		if a =~ /\A[bcdfghjklmnpqstvwxz][bcdfghjklmnpqstvwxz]\w*/
# 			firstletter = a[0...2]
# 			a = a.reverse.chop.reverse
# 			return a.reverse.chop.reverse + firstletter + "ay"
# 		else
# 			firstletter = a[0]
# 			return a.reverse.chop.reverse + firstletter + "ay"
# 		end
# 	end
# end

def translate(a)
	arr = []
	words = a.scan(/\w+/)
	words.each do |mot|
		if mot =~ /\A[aeiouy]\w*/
			arr << mot + "ay"
		elsif mot =~ /\A[bcdfghjklmnpqrstvwxz]\w*/
			if mot =~ /\A[bcdfghjklmnpqrstvwxz][bcdfghjklmnpqrstvwxz][bcdfghjklmnpqrstvwxz]\w*/
				firstletter = mot[0...3]
				mot = mot.reverse.chop.reverse
				mot = mot.reverse.chop.reverse
				arr << mot.reverse.chop.reverse + firstletter + "ay"
			elsif mot =~ /\A[bcdfghjklmnpqrstvwxz][bcdfghjklmnpqrstvwxz]\w*/
				firstletter = mot[0...2]
				mot = mot.reverse.chop.reverse
				arr << mot.reverse.chop.reverse + firstletter + "ay"
				else
				firstletter = mot[0]
				arr << mot.reverse.chop.reverse + firstletter + "ay"
			end
		end
	end
	return arr.join(" ")
end

translate("eat pie school three")


# def translate(a)
# 	arr = []
# 	words = a.scan(/\w+/)
# 	words.each do |mot|
# 		if mot =~ /\A[aeiouy]\w*/
# 			arr << mot + "ay"
# 		elsif mot =~ /\A[bcdfghjklmnpqstvwxz]\w*/
# 			if mot =~ /\A[bcdfghjklmnpqstvwxz][bcdfghjklmnpqstvwxz][bcdfghjklmnpqstvwxz]\w*/
# 				firstletter = mot[0...3]
# 				arr << mot[-3...0] + firstletter + "ay"
# 			elsif mot =~ /\A[bcdfghjklmnpqstvwxz][bcdfghjklmnpqstvwxz]\w*/
# 				firstletter = mot[0...2]
# 				arr << mot[-2...0] + firstletter + "ay"
# 				else
# 				firstletter = mot[0]
# 				arr << mot[-1...0] + firstletter + "ay"
# 			end
# 		end
# 	end
# 	puts arr.join(" ")
# end

# translate("eat pie three")
