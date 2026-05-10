object paquete {
  var esPaquetePago = false
  var peso = 500

  method esPaquetePago() = esPaquetePago

  method marcarComoPago() {
    esPaquetePago = true
  }

  method pesoEnKg() = peso
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
}