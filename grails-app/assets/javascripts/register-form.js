const cepInput = document.getElementById("cep");

cepInput.addEventListener("focusout", async () => {
    if (validateRegex(cepInput.value, /^[0-9]{8}$/)) {
        const response = await fetch(`https://viacep.com.br/ws/${cepInput.value}/json/`);
        const data = await response.json();

        if (!('erro' in data)) {
            renderAddressData(data);
        }
    }
});

function validateRegex(cep, regex) {
    return regex.test(cep);
}

function renderAddressData(data) {
    document.getElementById("address-str").value = data["logradouro"];
    document.getElementById("address-adt").value = data["complemento"];
    document.getElementById("district").value = data["bairro"];
    document.getElementById("city").value = data["localidade"];
    document.getElementById("state").value = data["uf"];
}
