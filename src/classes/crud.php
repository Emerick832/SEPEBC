<?php

/* require 'conexao-banco.php';


class Crud 
{

    public $cpf;
    public $nome;
    public $rg;
    public $ssp;
    public $sexo;
    public $dataNascimento;
    public $email;
    public $endereco;
    public $classificacaoProfissional;
    public $supervisorTecnico;
    public $dataDoCadastro;
    public $celular;
    public $SSP_Sigla_UF;

    public function inserirPF(){
        $query = "INSERT INTO sepebc.pessoafisica(`cpf`, `nome`,`rg`, `ssp`,`sexo`,`dataNascimento`,`e-mail`,`endereço`,`classificaçãoProfissional`,`SupervisorTecnico`,
        `datadocadastro`,`celular`,`SSP_Sigla_UF`)
        VALUES
        ('" . $this->cpf . "'>,
        <'" . $this->nome . "'>,
        <'" . $this->rg . "'>,
        <'" . $this->ssp . "'>,
        <'" . $this->sexo . "'>,
        <'" . $this->dataNascimento . "'>,
        <'" . $this->email . "'>,
        <'" . $this->endereco . "'>,
        <'" . $this->classificacaoProfissional . "'>,
        <'" . $this->supervisorTecnico . "'>,
        <'" . $this->dataDoCadastro . "'>,
        <'" . $this->celular . "'>,
        <'" . $this->SSP_Sigla_UF . "'>)";

        
    } 
}