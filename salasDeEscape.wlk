class SalaDeEscape {
  const nombre
  const dificultad
  const precioBase = 10000

  method precioFinal()
  method esUnaSalaDificil() = dificultad > 7

}

class SalaDeAnime inherits SalaDeEscape {
  override method precioFinal() = precioBase +7000
}

class SalaDeHistoria inherits SalaDeEscape {
 const estaBasadoEnHechosReales

 override method precioFinal() = precioBase + (dificultad * 31.4)
 override method esUnaSalaDificil() = self.estaDificil() && !estaBasadoEnHechosReales
 method estaDificil() = dificultad > 7 
}

class SaalaDeterror inherits SalaDeEscape {
  const cantidadDeSustos

  override method precioFinal() {
    if(self.haySustos() && self.queSusto()){
        return precioBase + self.sustoDiluido()
    }else {
        return precioBase
    }
  }
  method sustoDiluido() = cantidadDeSustos * 0.2
  method haySustos() = cantidadDeSustos > 0
  method queSusto() = cantidadDeSustos > 5

  override method esUnaSalaDificil() = dificultad > 7 || self.queSusto()
}