import escapistas.Escapista
import salasDeEscape.*
class Grupo {
  const integrantes = #{}

  method puedenSalir(unaSala)= integrantes.any({unIntegrante => unIntegrante.puedeEscapar(unaSala)})
  
}