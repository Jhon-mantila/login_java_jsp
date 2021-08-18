<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String nombre = request.getParameter("nombre");
	
	String apellido = request.getParameter("apellido");
	
	String usuario = request.getParameter("usuario");
	
	String contrasena = request.getParameter("contrasena");
	
	String pais = request.getParameter("paises");
	
	String tecnologia = request.getParameter("tecnologia");
	
	try{
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
	
	Statement miStatement = miConexion.createStatement();
	
	String sql = "INSERT INTO usuarios (nombre, apellido, usuario, contrasena, pais, tecnologia) VALUES ('"+ nombre +"','"+apellido+"','"+usuario+"','"+contrasena+"','"+pais+"','"+tecnologia+"')";
	
	miStatement.executeUpdate(sql);
	
	out.println("Ejecutado con Éxito");
	
	}catch(Exception e){
		
		out.println("Error Conexión con la Base de datos");
	}
%>
</body>
</html>