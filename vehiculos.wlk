object bicicleta {
    method pesoEnKg() = 5
}
object camion {
    var cantidadAcoplados = 0

    method cantidadAcoplados() = cantidadAcoplados

    method pesoEnKg() = 750 + self.cantidadAcoplados() * 500

    method engancharAcoplado() {
        cantidadAcoplados += 1
    }
    method camionVacio() = cantidadAcoplados == 0
    
    method desengancharAcoplado() {
        if (not self.camionVacio())
            cantidadAcoplados -= 1
    }
}