class Maestria {
  method escapa(unaSala, escapoDeVariasSalas)
}

object amateur inherits Maestria {
  override method escapa(unaSala, escapoDeVariasSalas) = !unaSala.esUnaSalaDificil() && escapoDeVariasSalas
}

object profesional inherits Maestria {
  override method escapa(unaSala, escapoDeVariasSalas) = true
}