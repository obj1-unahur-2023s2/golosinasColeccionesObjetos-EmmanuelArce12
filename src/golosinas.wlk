
object bombon {
	var gusto = "frutilla"
	var property peso = 15
	method precio() = 5
	method sabor() = "frutilla"
	method esLibreDeGluten() = true 
	method mordisco() = (peso * 0.8) -1
	}
	


object alfajor {
 
 	var property peso = 30
	method precio() = 12
	method sabor() = "chocolate"
	method esLibreDeGluten() = false 
	method mordisco() = peso *0.8 
	}
	


object caramelo {
 	var property peso = 5
	method precio() = 1
	method sabor() = "frutilla"
	method esLibreDeGluten() = true 
	method mordisco() = peso - 1
	}
object chupetin {
 	var property peso = 7
	method precio() = 2
	method sabor() = "naranja"
	method esLibreDeGluten() = true 
	method mordisco() {
		return if (peso>2){
			peso * 0.9
		}else{peso}
	}
}
object oblea{
 	var property peso = 250
	method precio() = 5
	method sabor() = "frutilla" 
	method esLibreDeGluten() = false 
	method mordisco() { 
		return if (peso>70) 
		peso *0.5
		else {peso * 0.75}
	}
}

object chocolatin{
	var pesoInicial 
	var property peso 
	method pesoInicial(nuevoPeso) {
		pesoInicial = nuevoPeso
		peso = nuevoPeso
	}
	method precio() = 0.5 * pesoInicial
	method sabor() = "chocolate" 
	method esLibreDeGluten() = false 
	method mordisco() { peso = 0.max(peso-2)}
	
}
object golosinaBaniada {
		var property golosinaBase = bombon
		var glaseado = 4
	method cambiarGoloinaBase(golo){
		golosinaBase= golo}
	method peso() = golosinaBase.peso() + glaseado 
	method precio() = golosinaBase.precio() + 2
	method baniado() = glaseado
	method gusto() = golosinaBase.sabor() 
	method esLibreDeGluten() = golosinaBase.esLibreDeGluten()
	method mordisco() {
		/*golosinaBase.mordisco().glaseado(2)
		golosinaBase.mordisco().glaseado(2)
		golosinaBase.mordico().glaseado()*/
		golosinaBase.mordisco()
		glaseado = 0.max(glaseado-2)
	}
}
object pastillaTuttiFrutti{
	var property saborActual= 0
	var property peso = 5
	var property esLibreDeGluten = true
	const sabor = ["frutilla","chocolate","naranja"] 
	method precio() {
		return if (esLibreDeGluten){
			7
		}else{10}
	}
	method sabor() = sabor.get(saborActual)
	method recibirMordisco(){
		peso= 0.max(peso-1.666666666666666)
		if(saborActual>=2){
			saborActual=0
		}
		else
		saborActual+=1
	}	
	
}



























