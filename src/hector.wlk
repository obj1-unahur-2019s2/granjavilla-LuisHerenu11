import wollok.game.*
import cultivos.*

object hector {
	var property position = new Position(x = 3, y = 8)
	var property image = "player.png"
	var property plantasCosechadas = []
	
	method plantarMaiz(){
		game.addVisual( new Maiz(position = self.position() ))
	}
	method plantarTrigo(){
		game.addVisual( new Trigo(position = self.position() ))
	}
	method regarPlanta(){
		// el colliders siempre devuelve una coleccion
		// puede ser vacia, de un elemento, o de muchos elementos
		// pero es "siempre" una coleccion
		game.colliders(self).forEach({ planta => planta.regate() })
	}
	method cosecharPlanta() {
		if (game.esCosechable())
		{
			game.colliders(self).forEach({planta => 
			game.removeVisual(planta)
			plantasCosechadas.add(planta)
			})
		}
		
	}
	method cantidadDePlantasCosechadas() {return plantasCosechadas.size().toString()}
}	