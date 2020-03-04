<!DOCTYPE html>
<html id="background-color">

<head>

	<title>SEPEBC - HOME</title>
	<meta charset="utf-8">
	<link href="\SEPEBC\css\cadastro.css" rel="stylesheet" type="text/css" />

</head>


<body>

	<section id="topo">

		<a href="index.php"><img src="\SEPEBC\img\sepebc-logo.png"></a>
		<span class="texto-titulo">Sindicato das Empresas Prestadoras de Serviços e Especializadas em Bombeiro Civil do Distrito Federal</span>

		<div>
			<!-- div pra alinhar o flexbox -->
		</div>
	</section>

	<section id="formulario">

	<form action="#" method="post">
			<h1 class="titulo">Pessoa Física</h1>
			<br><br>
			<input type="text" class="input" name="cpf" placeholder="  CPF"><br>
			<input type="text" class="input" name="nome" placeholder="  Nome"><br>
			<input type="text" class="input" name="rg" placeholder="  RG"><br>
			<input type="text" class="input" name="ssp" placeholder="  SSP"><br>
			<input type="text" class="input" name="sexo" placeholder="  Sexo"><br>
			<input type="text" class="input" name="dataNascimento" placeholder="  Data Nascimento"><br>
			<input type="text" class="input" name="email" placeholder="  E-Mail"><br>
			<input type="text" class="input" name="endereco" placeholder="  Endereço"><br>
			<input type="text" class="input" name="classificacaoProfissional" placeholder="  Classificação Profissional"><br>
			<input type="text" class="input" name="supervisorTecnico" placeholder="  Supervisor Técnico"><br>
			<input type="text" class="input" name="dataDoCadastro" placeholder="  Data do Cadastro"><br>
			<input type="text" class="input" name="celular" placeholder="  Celular"><br>
			<input type="text" class="input" name="uf" placeholder="  Sigla UF"><br><br>
			<input type="submit" value="Enviar"><br>
		</form>

		<form action="">
			<h1 class="titulo">Pessoa Jurídica</h1>
			<br><br>
			<input type="text" name="" class="input" placeholder="  CNPJ"><br>
			<input type="text" name="" class="input" placeholder="  Empresa"><br>
			<input type="text" name="" class="input" placeholder="  Diretor"><br>
			<input type="text" name="" class="input" placeholder="  Telefone"><br>
			<input type="text" name="" class="input" placeholder="  Celular"><br>
			<input type="text" name="" class="input" placeholder="  E-Mail"><br>
			<input type="text" name="" class="input" placeholder="  Supervisor Técnico"><br>
			<input type="text" name="" class="input" placeholder="  Registro CBMDF"><br>
			<input type="text" name="" class="input" placeholder="  Validade"><br><br>
			<input type="submit" value="Enviar"><br>
		</form>

	</section>



	<section id="rodape">

		<div class="txt3">
			SCS Qd. 06 Bl. A, n° 172. Edifício Jessé Freire, 5° andar, Sl.08 <br> CEP 70306-908 - Brasília/DF &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://sepebc.com.br/">www.sepebc.com.br</a>
		</div>

		<div><img src="\SEPEBC\img\logofecomercioprocont.png"></div>

	</section>

	<style>
		/*index.php style*/

		#background-color {
			background-color: lightgrey;
		}

		#topo {
			margin-top: 60px;
			display: flex;
			justify-content: space-around;
			align-items: center;
		}

		.texto-titulo {
			font-size: 18px;
			font-weight: bold;
		}

		#corpo {
			/*margin-top: 15%;*/
			height: auto;
			justify-content: center;
		}

		.txt3 {
			text-align: center;
			font-size: 18px;
			font-weight: bold;
		}

		#rodape {
			display: flex;
			margin-top: 10%;
			height: 200px;
			text-align: center;
			justify-content: space-around;
		}

		.form-cadastro {
			display: flex;
			align-items: center;
			flex-direction: column;
			justify-content: center;
		}

		#pagina {
			background-color: lightgrey;
		}

		#formulario {
			display: flex;
			justify-content: space-around;
			width: 48%;
			/* border: 1px solid black; */
			margin-left: auto;
			margin-right: auto;
		}

		.input {
			margin-top: 2%;
			height: 20px;
			border-radius: 3px;
		}

		.titulo {
			margin-top: 5%;
			padding-top: 3%;
			font-size: 18px;
			text-align: center;
		}
	</style>
</body>

</html>