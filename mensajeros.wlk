import vehiculos.*
import destinos.*
object roberto {
    var vehiculoActual = bicicleta

    method vehiculoActual() = vehiculoActual
    method pesoEnKg() = 90 + self.vehiculoActual().pesoEnKg()
    method puedeHacerLlamada() = false
    method puedeIrA(destino) = destino.puedeIngresar(self)

    method cambiarVehiculo(nuevoVehiculo) {
      vehiculoActual = nuevoVehiculo
    }
}
object chuckNorris {

    method pesoEnKg() = 80
    method puedeHacerLlamada() = true

    method puedeIrA(destino){
        destino.puedeIngresar(self)
    }

}
object neo {
    var tieneCredito = false

    method pesoEnKg() = 80
    method puedeHacerLlamada() = self.tieneCredito()
    method tieneCredito() = tieneCredito
    method puedeIrA(destino) = destino.puedeIngresar(self)

    method cargarCredito() {
        tieneCredito = true
    }

}