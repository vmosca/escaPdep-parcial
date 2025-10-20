class Maestria {
  method puedeEscapar(unaSala, escapoDeVariasSalas)
}

object amateur inherits Maestria {
  override method puedeEscapar(unaSala, escapoDeVariasSalas) = !unaSala.esUnaSalaDificil() && escapoDeVariasSalas
}

object profesional inherits Maestria {
  override method puedeEscapar(unaSala, escapoDeVariasSalas) = true
}