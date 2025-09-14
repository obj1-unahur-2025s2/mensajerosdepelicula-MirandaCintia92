object paquete {
  var estaPago = false
  method estaPago() { return estaPago} 
  method pagarPaquete(){
    estaPago = true
  }
  method sePuedeEntregar(unMensajero, unDestino){
    return unMensajero.puedeArribar() && self.estaPago()
  }

  

}

object puenteDeBrooklyn{
  method permiteElArribo(unMensajero) = unMensajero.peso <= 1000
}

object laMatrix{
  method permiteElArribo(unMensajero) = unMensajero.puedeLlamar()
}

object roberto{
  var vehiculo = bicicleta
  

  method cambioVehiculo(unVehiculo){
  vehiculo = unVehiculo
}
  method peso() {return 90 + vehiculo.peso()}
  method puedeLlamar() {return false}
  method puedeArribar(unDestino){return unDestino.permiteElArribo(self)}
}

object chuckNorris{

  method peso() {return 80}
  method puedeLlamar() {return true}
  method puedeArribar(unDestino){return unDestino.permiteElArribo(self)}
}

object neo{

  method peso() {return 0}
  method puedeLlamar() {return celular.tieneCredito}
  method puedeArribar(unDestino){return unDestino.permiteElArribo(self)}
}

object bicicleta{

  method peso() {return 5}
}

object camion{
  var acoplado = 1

  method modificarCantidadAcoplado(unValor) {
    acoplado = unValor
    }
  method peso() = {return acopplado * 500}
}
object celular{
  var tieneCredito = true

  method cargarCredito() {
    tieneCredito = true
    }
  method descargarCredito(){
    tieneCredito = false
  }
  method tieneCredito (){
    return tieneCredito
  }
}