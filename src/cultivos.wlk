class Maiz {
	var property position
	var property esAdulta = false
	method image() {
		if (esAdulta)
		{
			return "corn_adult.png"
		} else{
			return "corn_baby.png"
		}
	}
	
	method regate() {
		if(not esAdulta) { esAdulta = true }
	}
	method teChocoElOso() {
		self.regate()
	}
}

class Trigo {
	var property position
	var evolucion = 0
	
	method image() { return "wheat_0.png" }
	method regate(){
		if(evolucion < 3)
		{	
			if(evolucion == 2)
			{
				evolucion += 1
				return "wheat_3.png"
			}
	    	else
			{
				evolucion += 1
				return "wheat_2.png"
			}
		}
		else
		{
			return "no se puede cosechar"	
		}	
}
	
	/* Pasa a la etapa de evolución siguiente: de 0 a 1, de 1 a 2, de 2 a 3, de 3 vuelve a 0.
La imagen cambia a wheat_x.png, donde la x corresponde a la etapa de evolución. */
	
	method teChocoElOso() {
		if (position.x() > 0) {
			position = position.left(1)
		}
	}
}