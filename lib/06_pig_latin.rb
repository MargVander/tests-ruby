def translate(a)
	arr = []
	words = a.scan(/\w+/)
	words.each do |mot|
		if mot =~ /\A[bcdfghjklmnpqrstvwxz][q][u]\w*/
			firstletter = mot[0...3]
				mot = mot.reverse.chop.reverse
				mot = mot.reverse.chop.reverse
				arr << mot.reverse.chop.reverse + firstletter + "ay"
		elsif mot =~ /\A[q][u]\w*/
			firstletter = mot[0...2]
				mot = mot.reverse.chop.reverse
				arr << mot.reverse.chop.reverse + firstletter + "ay"
		elsif mot =~ /\A[aeiouy]\w*/
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
