import profesionales.*

class Empresa {
	const property profesionalesContratados = #{}
	var property honorariosDeReferencia
	
	method agregarProfesional(unProfesional){
		profesionalesContratados.add(unProfesional)
	}
	
	method eliminarProfesional(unProfesional){
		profesionalesContratados.remove(unProfesional)
	}
	
	method cuantosEstudiaronEn(unaUniversidad){
		return profesionalesContratados.count({p => p.universidad() == unaUniversidad})
	}
	
	method profesionalesCaros(){
		return profesionalesContratados.filter({p => p.honorariosPorHora() > self.honorariosDeReferencia()})
	}
	
	method universidadesFormadoras(){
		return profesionalesContratados.filter({p => p.universidad()}).asSet()
		//return profesionalesContratados.map({p => p.universidad()}).asSet()
	}
	
	method profesionalMasBarato(){
		return profesionalesContratados.min({p => p.honorariosPorHora()})
	}
	
	method esDeGenteAcotada(){
		return profesionalesContratados.all({p => p.provinciasDondePuedeTrabajar().size() <= 3})
	}
}
