import wollok.game.*
object este {
	method siguientePosicion(pos){
		if(pos.x() == game.width()-1){
			return pos
		}
		else {
			return pos.right(1)
		}
	}
}

object oeste {
	method siguientePosicion(pos){
		if(pos.x() == 0) {
			return pos.left(1)
		}
		else {
			return pos.left(1)
		}
	}
}
object norte {
	/* completar */
}

object sur {
	/* completar */
}