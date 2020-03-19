<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sepebc";

$cpf = $_POST['cpf'];
$nome = $_POST['nome'];
$rg = $_POST['rg'];
$ssp = $_POST['ssp'];
$sexo = $_POST['sexo'];
$dataNascimento = $_POST['dataNascimento'];
$email = $_POST['email'];
$endereco = $_POST['endereco'];
$classificacaoProfissional = $_POST['classificacaoProfissional'];
$supervisorTecnico = $_POST['supervisorTecnico'];
$dataDoCadastro = $_POST['dataDoCadastro'];
$celular = $_POST['celular'];
$SSP_Sigla_UF = $_POST['SSP_Sigla_UF'];

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO sepebc.pessoafisica
    (cpf,
    nome,
    rg,
    ssp,
    sexo,
    dataNascimento,
    email,
    endereco,
    classificacaoProfissional,
    supervisorTecnico,
    datadocadastro,
    celular,
    SSP_Sigla_UF)
    VALUES
    ('$cpf',
    '$nome',
    '$rg',
    '$ssp',
    '$sexo',
    '$dataNascimento',
    '$email',
    '$endereco',
    '$classificacaoProfissional',
    '$supervisorTecnico',
    '$dataDoCadastro',
    '$celular',
    '$SSP_Sigla_UF');";
    // use exec() because no results are returned
    $conn->exec($sql);
    echo "Inserido com Sucesso";
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}

$conn = null;
