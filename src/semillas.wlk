import parcelas.*

class Planta{
	var property anioDeObtencion = null      
	var property altura = 0               
	var property toleranciaAlSol = null
	

	method esFuerte() = self.toleranciaAlSol() > 10    
	method daSemillas() = self.esFuerte()       
}

class Menta inherits Planta{
	override method toleranciaAlSol() = 6
	method  espacioQueOcupa() = altura * 3
	override method daSemillas() = super() or altura > 0.4 
	method laParcelaEsIsdeal(parcela) = parcela.superficie() > 6
}


class Soja inherits Planta{
	override method toleranciaAlSol() = if (altura < 0.5) 6 else if (altura.between(0.5,1)) 7 else 9 
	
	method espacioQueOcupa() = altura / 2 
	override method daSemillas() = super() or (anioDeObtencion > 2007 and altura > 1)
	method laParcelaEsIsdeal(parcela) = parcela.horasDeSol() == self.toleranciaAlSol()
}


class Quinoa inherits Planta{
	const property espacioQueOcupa = 0.5	
	override method daSemillas() = super() or (anioDeObtencion < 2001) 
	method laParcelaEsIsdeal(parcela) = not parcela.algunaPlantaSuperaLos(1.5)
}

class SojaTransgenica inherits Soja{
	
	override method daSemillas()= false
	override method laParcelaEsIsdeal(parcela) = parcela.cantidadMaxima() == 1
}


class Hierbabuena inherits Menta{
	
	override method espacioQueOcupa() = super() * 2
	
}