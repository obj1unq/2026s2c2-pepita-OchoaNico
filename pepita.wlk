object pepita {
    var energia = 100

    method volar(distanciaMetros) {
        energia = energia - 10 - distanciaMetros/10
    }

    method descansar () {
        energia = energia + 10
    }

    method estaCansada (){
        return energia < 30
    }

    method comer(alimento){
        energia = energia + alimento.valorEnCalorias()
    }

}

object alpiste {
    method valorEnCalorias(){
        return 25
    }
}

object manzana {
    const calorias = 20
    var madurez = 0

    method cambiarMadurez(valor){
        madurez = valor
    }

    method valorEnCalorias(){
        return self.calcularCaloriasSegunMadurez()
    }

    method calcularCaloriasSegunMadurez (){
        return if (madurez == 3) {
            0
        } else {
            madurez * calorias
        }
    }
}