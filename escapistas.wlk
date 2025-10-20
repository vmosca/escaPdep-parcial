import salasDeEscape.*
import maestrias.*
class Escapista {
  var maestria
  const salasEscapadas = []
  var saldoEnSuBilletera
  
  method escapoDeMuchasSalas() = salasEscapadas.size() >= 6
  method puedeEscapar(unaSala) = maestria.escapo(unaSala ,self.escapoDeMuchasSalas())

  method mejorar() {
    maestria = self.aumentarMaestria()
  }

  method es(tipoDeMaestria) = maestria == tipoDeMaestria

  method aumentarMaestria() {
    if(self.escapoDeMuchasSalas()){
      return profesional 
    } else{
      return maestria
    }
    if(self.es(profesional)){
      throw new Exception(message = "no hay mas niveles") 
    }
  }

  method deQueSalasEscapo() = salasEscapadas.map({unaSala => unaSala.nombre()}).asSet()

  method escapa(unaSala) = salasEscapadas.add(unaSala) 

  method puedePagar(unaSala) = saldoEnSuBilletera > unaSala.precioFinal()

  method saldoEnSuBilletera() = saldoEnSuBilletera

  method pagar(unaCantidad){ 
    saldoEnSuBilletera = saldoEnSuBilletera - unaCantidad
}
}

