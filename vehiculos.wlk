object bicicleta{
    method pesoEnKg() = 5
}
object camion {
    var cantidadAcoplados = 2

    method cantidadAcoplados() = cantidadAcoplados

    method pesoEnKg() = 1000 + self.cantidadAcoplados() * 500

    method engancharAcoplado() {
        cantidadAcoplados += 1
    }
    method camionVacio() = cantidadAcoplados == 0
    
    method desengancharAcoplado() {
        if (not self.camionVacio())
            cantidadAcoplados -= 1
    }
}