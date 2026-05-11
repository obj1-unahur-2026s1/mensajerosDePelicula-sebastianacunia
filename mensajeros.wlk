import paquetes.*
import vehiculos.*
import destinos.*
object roberto {
    var vehiculoActual = bicicleta

    method vehiculoActual() = vehiculoActual
    method pesoEnKg() = 90 + self.vehiculoActual().pesoEnKg()
    method puedeHacerLlamada() = false
    
    method puedeIngresarA(destino) = destino.requisitosIngreso(self)
    method puedeEntregar(paquete) = paquete.esPaquetePago() && self.puedeIngresarA(paquete.destino())

    method cambiarVehiculo(nuevoVehiculo) {
      vehiculoActual = nuevoVehiculo
    }
}
object chuckNorris {

    method pesoEnKg() = 80
    method puedeHacerLlamada() = true

    method puedeIngresarA(destino) = destino.requisitosIngreso(self)
    method puedeEntregar(paquete) = paquete.esPaquetePago() && self.puedeIngresarA(paquete.destino())
}
object neo {
    var tieneCredito = false

    method pesoEnKg() = 80
    method puedeHacerLlamada() = self.tieneCredito()
    method tieneCredito() = tieneCredito

    method puedeIngresarA(destino) = destino.requisitosIngreso(self)
    method puedeEntregar(paquete) = paquete.esPaquetePago() && self.puedeIngresarA(paquete.destino())
    

    method cargarCredito() {
        tieneCredito = true
    }

}