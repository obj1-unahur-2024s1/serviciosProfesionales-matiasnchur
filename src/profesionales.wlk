import universidad.*

class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { 
		return #{universidad.provincia()}
	}
	
	method honorariosPorHora() { 
		return universidad.honorariosRecomendados()
	}
}

class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { 
		return #{"Entre Ríos", "Corrientes", "Santa Fe"}
	}
	
	method honorariosPorHora() { 
		return 3000
	}
}

class ProfesionalLibre {
	var universidad
	const property provinciasDondePuedeTrabajar = #{}
	var property honorariosPorHora
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method asignarProvincias(listaDeProvincias) {
		provinciasDondePuedeTrabajar.addAll(listaDeProvincias)
	}
	
}
