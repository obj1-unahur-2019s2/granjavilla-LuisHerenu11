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
		if(pos.x() > 0) {
			return pos.left(1)
		}
		else {
			return pos
		}
	}
}
object norte {
	method siguientePosicion(pos){
		if(pos.y() == game.height()-1)
		{
		return pos.up(1)
		}
		else{
		return pos
		}
	}
}

object sur {
	method siguientePosicion(pos){
		if(pos.y() > 0) {
			return pos.down(1)
		}
		else{
			return pos
		}
	}
}

// height = altura  ------- width = anchura