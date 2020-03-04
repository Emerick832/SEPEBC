<?php


require_once 'crud.php';

$crud = new Crud();
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


$crud->cpf = $cpf;
$crud->nome = $nome;
$crud->rg = $rg;
$crud->ssp = $ssp;
$crud->sexo = $sexo;
$crud->dataNascimento = $dataNascimento;
$crud->email = $email;
$crud->endereco = $endereco;
$crud->classificacaoProfissional = $classificacaoProfissional;
$crud->supervisorTecnico = $supervisorTecnico;
$crud->dataDoCadastro = $dataDoCadastro;
$crud->sscelularp = $celular;
$crud->SSP_Sigla_UF = $SSP_Sigla_UF;



$crud->inserirPf();
header('Location: /SEPEBC/src/cadastro.php');







