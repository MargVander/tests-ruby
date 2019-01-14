def time_string(a)
	h = 0
	m = 0
	while a >= 3599
		h = h+1
		a = a - 3600
	end
	
	while a >= 59
		m = m+1
		a = a - 60
	end
	return "#{"%.2i" %h}:#{"%.2i" %m}:#{"%.2i" %a}"
end
