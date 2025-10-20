import escapistas.Escapista
import salasDeEscape.*
class Grupo {
  const integrantes = #{}

  method puedenSalir(unaSala) = integrantes.any({unIntegrante => unIntegrante.puedeEscapar(unaSala)})

  method precioAPagarIndividual(unPrecio) = unPrecio / integrantes.size()

  method saldoGrupal()= integrantes.sum({unIntegrante => unIntegrante.saldoEnSuBilletera()})

  method pagoIndividual(unaSala){
    const unaCantidad = self.precioAPagarIndividual(unaSala)
    integrantes.forEach({unIntegrante => unIntegrante.pagar(unaCantidad)})
  }
  
  method puedenPagarLaSala(unaSala)= self.saldoGrupal() > unaSala.precioFinal() or integrantes.all({unIntegrante => unIntegrante.puedePagar(unaSala)})

  method escapar(unaSala){
    if(!self.puedenPagarLaSala(unaSala)){
      throw new Exception(message = "saldo insuficiente")
    }
    if(!self.puedenSalir(unaSala)){
      throw new Exception(message = "experiencia faltante")
    }
    self.pagoIndividual(unaSala)
    integrantes.forEach({unIntegrante => unIntegrante.escapa(unaSala)})
  }
}