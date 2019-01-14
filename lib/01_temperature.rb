def ftoc(fahr)
	fahr = fahr - 32
	fahrresult = fahr * 0.55555555555555555555.to_f
	return fahrresult
end

def ctof(celc)
	celc = celc*1.8
	celcresult = celc+32
	return celcresult
end