<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	
	String usuario = request.getParameter("usuario");
	
	String contrasena = request.getParameter("contrasena");
		
	try{
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
	
	PreparedStatement c_preparada = miConexion.prepareStatement("SELECT * FROM usuarios WHERE usuario=? AND contrasena=?");
	
	c_preparada.setString(1, usuario);
	
	c_preparada.setString(2, contrasena);
	
	ResultSet miResultSet = c_preparada.executeQuery();
	
	if (miResultSet.absolute(1)) out.println("Usuario Logueado");
	else out.println("No exite El Usuario");
	
	}catch(Exception e){
		
		out.println("Error Conexión con la Base de datos");
	}
%>
</body>
</html>