import noEscapoDeSuficientesSalasException.*
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

  method aumentarMaestria() {
    if(self.escapoDeMuchasSalas()){
      return profesional 
    } else{
      return maestria
    }
  }

  method deQueSalasEscapo() = salasEscapadas.map({unaSala => unaSala.nombre()}).asSet()

}