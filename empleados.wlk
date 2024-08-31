//Escribir aqui los objetos

object galvan {

    var sueldo = 15000

    var dinero = 0

    method gastar(cuanto) {
        dinero -= cuanto
    }

    method deuda() {
        return dinero.min(0).abs()
    }

    method dinero() {
        return dinero.max(0)
    }
    
    method sueldo() {
        return sueldo
    }

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

   method cobrar() {
        dinero += sueldo
   }

}

object baigorria {

    var empasVendidas = 0

    var totalCobrado = 0

    method vender(cant) {
        empasVendidas += cant
    }

    method sueldo() {
        return (empasVendidas * 15)
    }

     method totalCobrado() {
        return totalCobrado 
    } 

    method cobrar() {
        totalCobrado += self.sueldo()
        empasVendidas = 0
    }

}

object gimenez {

    var fondo = 300000

    method pagarSueldo(empleado) {
        fondo -= empleado.sueldo()
        empleado.cobrar()
    }

    method fondo() {
        return fondo
    }
}