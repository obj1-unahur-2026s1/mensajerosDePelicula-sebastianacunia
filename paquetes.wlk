import mensajeros.*
import vehiculos.*
import destinos.*
object paquete {
  var esPaquetePago = false
  var peso = 500
  var mensajeroAsignado = chuckNorris
  var destino = puenteBrooklyn

  method esPaquetePago() = esPaquetePago
  method mensajeroAsignado() = mensajeroAsignado
  method destino() = destino
 

  method marcarComoPago() {
    esPaquetePago = true
  }
  method cambiarMensajero(nuevoMensajero){
    mensajeroAsignado = nuevoMensajero
  }
  method cambiarDestino(nuevoDestino){
    destino = nuevoDestino
  }

  method pesoEnKg() = peso
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
}