object iNTA {
	const parcelas = []
	
	method proedioDePlantas() = parcelas.sum({x=>x.size()}) / parcelas.size()	
	method parcelaMasAutosustentable() = parcelas.filter({x=>x.size() > 4})
}
