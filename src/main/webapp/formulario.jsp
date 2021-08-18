<html>
<head>
<meta charset="utf-8">
<title>Registro Formulario</title>
</head>
<style>

body{
background-color: #376FDB;

}

h1 {
text-align:center;
color: #B3D95F;
}

.cuadro{
	
	margin: 0 auto;
	height: 500px;
	width: 600px;
	background-color:#6F8C30;
	border-style:solid;
	
}

form{
	margin-top: 20px;
	
}

.cuadro label{
	font-size:25px;
	padding: 15px;
}
.cuadro .etiquetas{
	text-align:left;
	width:100px;
	float: left;
}

.cuadro .cuadrosRelleno {
	margin: 0 auto;
	width: 250px;
	
	
}

.cuadro .cuadrosRelleno input[type=text]{
	
	width: 100%;
	padding: 10px 10px;
	margin: 2px 0;
	box-sizing: border-box;

}

.limpiarLeft{
	margin: 15px 15px;
	clear: left;
}

.cuadro select{
	
	width:100%;
	padding: 10px 10px;
  	border: none;
  	border-radius: 4px;
  	background-color: #f1f1f1;
}

.cuadro .boton{
text-align:center;
}

.cuadro .boton input[type=submit]{
  	
  width:40%;
  background-color: #B3D95F;
  border: none;
  color: #8F3C2D;
  padding: 16px 32px;
  text-decoration: none;
  font-size:20px;
  margin: 4px 2px;
  cursor: pointer;
}

</style>
<body>

<h1>Registro</h1>

<div class="cuadro">
	
	<form action="recoge_datos.jsp" method="post">
	<div class="etiquetas"><label>Nombre:</label></div>
	<div class="cuadrosRelleno"><input type="text" name="nombre"></div>
	
	<div class="limpiarLeft"></div>
	
	<div class="etiquetas"><label>Apellido:</label></div>
	<div class="cuadrosRelleno"><input type="text" name="apellido"></div>
	
	<div class="limpiarLeft"></div>
	
	<div class="etiquetas"><label>Usuario:</label></div>
	<div class="cuadrosRelleno"><input type="text" name="usuario"></div>
	
	<div class="limpiarLeft"></div>
	
	<div class="etiquetas"><label>Contraseña:</label></div>
	<div class="cuadrosRelleno"><input type="text" name="contrasena"></div>
	
	<div class="limpiarLeft"></div>
	
	<div class="etiquetas"><label>Pais:</label></div>
	<div class="cuadrosRelleno">
	
	<select name="paises">
	<option value="Colombia">Colombia</option>
	<option value="Perú">Perú</option>
	<option value="Venezuela">Venezuela</option>
	<option value="Ecuador">Ecuador</option>
	<option value="España">España</option>
	
	</select>
	</div>
	
	<div class="limpiarLeft"></div>
	
	<div class="etiquetas"><label>Tecnología:</label></div>
	<div class="cuadrosRelleno">
	<label><input type="radio" name="tecnologia" value="javascript">JavaScript</label><br>
	<label><input type="radio" name="tecnologia" value="java">Java</label><br>
	<label><input type="radio" name="tecnologia" value="php">Php</label><br>
	</div>
	
	<div class="limpiarLeft"></div>
	
	<div class="boton"><input type="submit" value="Enviar" name="Enviar"></div>
	
	</form>

</div>

</body>

</html>