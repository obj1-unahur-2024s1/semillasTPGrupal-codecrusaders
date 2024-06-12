import semillas.*

class Parcelas {
	var property ancho = 0
	var property largo = 0
	var property horasDeSol = 0
	const plantas = []
	
	method superficie() = ancho * largo 
	method cantidadMaxima() = if (ancho > largo) self.superficie() / 5 else self.superficie() / 3 + largo
	method tieneComplicaciones() = plantas.any({x=>x.toleranciaAlSol() < horasDeSol})
	method plantarUnaPlanta(planta){
		if (plantas.size() < self.cantidadMaxima() or planta.toleranciaAlSol() >= (horasDeSol - 2)) 
			plantas.add(planta) 
		else 
			"¡Advertencia!"
		
	}
	method algunaPlantaSuperaLos(alturaASuperar) = plantas.any({x=>x.altura() > alturaASuperar})
	
	
}
