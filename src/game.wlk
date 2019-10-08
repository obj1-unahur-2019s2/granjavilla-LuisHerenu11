import hector.*
import oso.*
import cultivos.*
import wollok.game.*

object juegoGranja {
	var personaActual = hector	
	
	method configurarTeclados(){
		keyboard.s().onPressDo({ game.say(hector, "hola gente") })
 		keyboard.o().onPressDo({ hector.position(new Position(x = 0, y = 0)) })
 		keyboard.m().onPressDo({ hector.plantarMaiz() })
 		keyboard.r().onPressDo({ hector.regarPlanta() })
 		keyboard.c().onPressDo({hector.cosecharPlanta() })
 		keyboard.p().onPressDo({ 
 			game.say(hector,
 			"tengo cosechadas" + hector.cantidadDePlantasCosechadas() + "plantas"
 		)
 		keyboard.t().onPressDo({hector.plantarTrigo() })
 		})
	}
	method configurarPersonajes(){
		game.addVisualCharacter(hector)
 		game.addVisualCharacter(oso)
	}
	method configurarMovimientos(){
		keyboard.up().onPressDo({
			if(personaActual.position().y() < game.height()-1) {
				personaActual.position(personaActual.position().up(1))
			}
		})
		keyboard.down().onPressDo({
			if(personaActual.position().y() > 0) {
				personaActual.position(personaActual.position().down(1))
			}
		})
		keyboard.right().onPressDo({
			if(personaActual.position().x() < game.height()-1) {
				personaActual.position(personaActual.position().right(1))
			}
		})
		keyboard.left().onPressDo({
			if(personaActual.position().x() > 0) {
				personaActual.position(personaActual.position().left(1))	
			}
		})
	}
	method configurarColisiones(){
		game.whenCollideDo(oso, { objeto => objeto.teChocoElOso() })
	}
}
