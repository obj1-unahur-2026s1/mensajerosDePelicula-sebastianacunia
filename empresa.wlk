import paquetes.*
import mensajeros.*
object empresa {
    const mensajeros = [chuckNorris]

    method mensajeros() = mensajeros

    method contratarMensajero(nuevoMensajero) {
        if (not mensajeros.contains(nuevoMensajero))
            mensajeros.add(nuevoMensajero)
    }
    
    method despedirMensajero(mensajeroDespedido) {
        if (mensajeros.contains(mensajeroDespedido))
            mensajeros.remove(mensajeroDespedido)
    }
    
    method despedirTodosLosMensajeros() {
        mensajeros.clear()
    }
    
    method esMensajeriaGrande() = mensajeros.size() > 2
    
    method elPrimerMensajeroPuedeEntregar(paquete) = mensajeros.first().puedeEntregar(paquete)

    method pesoUltimoMensajero() = mensajeros.last().pesoEnKg()

    
}