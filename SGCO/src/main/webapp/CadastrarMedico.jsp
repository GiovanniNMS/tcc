<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SGCO - Cadastrar Medico</title>
<link href="styles.css" rel="stylesheet">
<script>
	
</script>
</head>
<body>
	<%@page import="tabelas.TbMedico, dao.MedicoDao"%>
	<%
	String usuario = (String) session.getAttribute("loginUsuario");
	if (usuario == null) {
		response.sendRedirect("Login.jsp");
	}
	%>
	<header>
		<a href="Deslogar.jsp"><img src="./img/deletar.svg" alt="sair"
			class="btn-home" title="Sair" /></a> <a href="Index.jsp"><img
			src="./img/home.svg" alt="home" class="btn-home" title="Tela Inicial" /></a>

		<h1 class="itens-header">SGCO - SISTEMA DE GEST�O DE CIRURGIAS
			ORTOP�DICAS</h1>
		<a href="ConsultarMedico.jsp"><img src="./img/voltar.svg"
			alt="voltar" class="btn-2" /></a>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.6/jquery.inputmask.min.js"></script>
		<script>
			$(document).ready(function() {
				$('input[name="celular"]').inputmask('(99) 9 9999-9999');
				$('input[name="cpf"]').inputmask('999.999.999-99');
				$('input[name="rg"]').inputmask('99.999.999-9');
			})
		</script>
	</header>

	<h2>Cadastar Medico</h2>
	<%
	String erroInsercao = (String) session.getAttribute("erroInsercao");
	%>
	<%
	if (erroInsercao != null) {
	%>
	<label class="erroValidacao"><%=erroInsercao%></label>
	<%
	session.removeAttribute("erroInsercao");
	}
	%>
	<form action="GatilhoCadastrarMedico.jsp" method="post">

		<table style="background-color: transparent">

			<tr>
				<td>Nome Completo:</td>
				<td colspan="4"><input type="text" name="nomeMedico" required
					maxlength="45"></td>
			</tr>
			<tr>
				<td>Celular:</td>
				<td><input type="text" name="celular" required></td>
				<td>E-mail:</td>
				<td colspan="3"><input type="email" name="email" required
					placeholder="exemplo@email.com"></td>
			</tr>
			<tr>
				<td>Data Nascimento:</td>
				<td><input type="date" name="dataNascimentoStg" required></td>
				<td>RG:</td>
				<td><input type="text" name="rg" required></td>
				<td>CPF:</td>
				<td><input type="text" name="cpf" required></td>
			</tr>
			<tr>
				<td>CMR:</td>
				<td><input type="number" name="numeroCrm" required max="999999"></td>
				<td>UR CMR:</td>
				<td><select id="estado" name="urCrm">
						<option value="" selected disabled></option>
						<option value="AC">Acre</option>
						<option value="AL">Alagoas</option>
						<option value="AP">Amap�</option>
						<option value="AM">Amazonas</option>
						<option value="BA">Bahia</option>
						<option value="CE">Cear�</option>
						<option value="DF">Distrito Federal</option>
						<option value="ES">Esp�rito Santo</option>
						<option value="GO">Goi�s</option>
						<option value="MA">Maranh�o</option>
						<option value="MT">Mato Grosso</option>
						<option value="MS">Mato Grosso do Sul</option>
						<option value="MG">Minas Gerais</option>
						<option value="PA">Par�</option>
						<option value="PB">Para�ba</option>
						<option value="PR">Paran�</option>
						<option value="PE">Pernambuco</option>
						<option value="PI">Piau�</option>
						<option value="RJ">Rio de Janeiro</option>
						<option value="RN">Rio Grande do Norte</option>
						<option value="RS">Rio Grande do Sul</option>
						<option value="RO">Rond�nia</option>
						<option value="RR">Roraima</option>
						<option value="SC">Santa Catarina</option>
						<option value="SP">S�o Paulo</option>
						<option value="SE">Sergipe</option>
						<option value="TO">Tocantins</option>
				</select></td>
				<td>Sexo:</td>
				<td><select name="sexo" required>
						<option value="" selected disabled>
						<option value="Feminino">Feminino</option>
						<option value="Masculino">Masculino</option>
				</select></td>
			</tr>
			<tr>
				<td><input class="btn-enviar" type="submit"></td>
			</tr>
		</table>

	</form>

</body>
</html>