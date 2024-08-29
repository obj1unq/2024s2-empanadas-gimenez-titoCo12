//Escribir aqui los objetos

object galvan {

    var empasVendidas = 0

    var sueldo = 15000

    var totalCobrado = 0

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method sueldo() {
        return sueldo
    }

    method totalCobrado(_totalCobrado) {
        totalCobrado = _totalCobrado
    }

    method empasVendidas(_empasVendidas) {
        empasVendidas = _empasVendidas
    }

}

object baigorria {

    var sueldo = 0

    var empasVendidas = 0

    var totalCobrado = 0

    method sueldo() {
        return sueldo
    }

    method empasVendidas() {
        return empasVendidas
    }

    method empasVendidas(_empasVendidas) {
        empasVendidas = _empasVendidas
    }

    method vender(cant) {
        sueldo += 15 * cant
        empasVendidas += 1
    }

    method totalCobrado(_totalCobrado) {
        totalCobrado = _totalCobrado
    }

    method totalCobrado() {
        return totalCobrado
    }

}

object gimenez {

    var fondo = 300000

    method fondo() {
        return fondo
    }

    method pagarSueldo(empleado) {
        fondo -= empleado.sueldo()
        empleado.totalCobrado(empleado.sueldo()) 
        empleado.empasVendidas(0)
    }

}