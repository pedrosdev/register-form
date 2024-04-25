<!doctype html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <title>Cadastro</title>
</head>
<body>
    <main>
        <h1>Cadastre-se:</h1>

        <g:form name="register-form" url="[action: 'store', controller: 'register']">
            <%-- Informações básicas --%>
            <label for="name">Nome:</label>
            <input name="name" id="name" type="text" required>
            
            <label for="cpf">CPF:</label>
            <input name="cpf" id="cpf" type="text" required>

            <label for="phone">Telefone:</label>
            <input name="phone" id="phone" type="tel" required>



            <%-- Endereço --%>
            <label for="cep">CEP:</label>
            <input name="cep" id="cep" type="text" required>

            <label for="address-str">Rua:</label>
            <input name="address-str" id="address-str" type="text" required>

            <label for="address-num">Número:</label>
            <input name="address-num" id="address-num" type="text" placeholder="S/n" required>

            <label for="address-adt">Complemento:</label>
            <input name="address-adt" id="address-adt" type="text" placeholder="Apartamento, bloco, etc.">

            <label for="district">Bairro:</label>
            <input name="district" id="district" type="text" required>

            <label for="city">Cidade:</label>
            <input name="city" id="city" type="text" required>

            <label for="state">UF:</label>
            <input name="state" id="state" type="text" required>



            <span class="hint">*Você deve preencher todos os campos obrigatórios</span>
            <button type="submit">Enviar</button>
        </g:form>
    </main>
</body>
</html>
