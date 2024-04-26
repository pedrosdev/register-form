package viacep.form

class RegisterController {

    def store() {
        // Imprime as informações no console
        println("Nome: " + params["name"])
        println("CPF: " + params["cpf"])
        println("Telefone: " + params["phone"])
        println("CEP: " + params["cep"])
        println("Rua: " + params["address-str"])
        println("Número: " + params["address-num"])
        println("Complemento: " + params["address-adt"])
        println("Bairro: " + params["district"])
        println("Cidade: " + params["city"])
        println("UF: " + params["state"])

        redirect(action: "success")
    }

    def success() { }

}
