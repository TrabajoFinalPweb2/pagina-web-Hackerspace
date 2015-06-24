<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file="css/estilo-form.css" %>
</style>
<title>formularioHS</title>
</head>
<body>
<br><br><br><br>
<form action="savehs">
<fieldset><legend>Registro de miembros del HackerSpace</legend>
<div id="formulario">
	<div class="fila">
		<div class="etiqueta"><label for="dni">DNI :</label></div>
		<div class="control"><input type="text" name="dni" maxlength="8" pattern="[0-9]{8}" title="Solo números"/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="nomb">Nombre :</label></div>
		<div class="control"><input type="text" name="nomb" maxlength="10" pattern="[A-Za-z]{2,10}" title="Solo letras"/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="apellp">Apellido Paterno:</label></div>
		<div class="control"><input type="text" name="apellp" maxlength="15" pattern="[A-Za-z]{2,15}" title="Solo letras" /></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="apellm">Apellido Materno:</label></div>
		<div class="control"><input type="text" name="apellm" maxlength="15" pattern="[A-Za-z]{2,15}" title="Solo letras" /></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="direccion">Dirección :</label></div>
		<div class="control"><input type="text" name="direccion" maxlength="22" /></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="email">Email :</label></div>
		<div class="control"><input type="email" name="email" maxlength="20" /></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="user">Username :</label></div>
		<div class="control"><input type="text" name="user" maxlength="10"/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="pass">Contraseña:</label></div>
		<div class="control"><input type="password" name="pass" maxlength="8" pattern="[A-Za-z0-9]{8}" title="8 digitos( letras(mayusculas y/o minusculas) y/o numeros)" /></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="cel">Celular :</label></div>
		<div class="control"><input type="text" name="cel" maxlength="9" pattern="[0-9]{9}" title="Solo numeros"/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="cestudios">Centro de Estudios :</label></div>
		<div class="control"><input type="text" name="cestudios" maxlength="20" /></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="sexo">Sexo :</label></div>
		<div class="control">
			<select name="sexo" size="1">
	 			<option value="femenino">Femenino</option>
				<option value="masculino">Masculino</option>
			</select>
		</div>
	</div>
	<br>
	<div class="fila">
		<div id="action"><input type="reset" value="Limpiar"/><input type="submit" value="Enviar"/></div>
	</div>
</div>
</fieldset>
</form>


<br>
<center>
<p>
    <a href="http://jigsaw.w3.org/css-validator/check/referer">
        <img style="border:0;width:88px;height:31px"
            src="http://jigsaw.w3.org/css-validator/images/vcss"
            alt="Â¡CSS VÃ¡lido!" />
    </a>
</p>
<p>
<a href="http://jigsaw.w3.org/css-validator/check/referer">
    <img style="border:0;width:88px;height:31px"
        src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
        alt="Â¡CSS VÃ¡lido!" />
    </a>
</p>
<p>
    <a href="http://validator.w3.org/check?uri=referer"><img
      src="http://www.w3.org/Icons/valid-html401" alt="Valid HTML 4.01 Transitional" height="31" width="88"></a>
</p>
</center>      
</body>
</html>
