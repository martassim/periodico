<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>noticias</title>
</head>
<body>
<h2>leer noticias</h2>

              <%
				 String msg = (String)session.getAttribute("servletMsg");
				 out.println(msg);
			 
			 %>
			 
			 <a href= "Consultar" >consultar</a><br><p>
			 <hr>
			 
<form action ="Subir" method="post" >
      
            categoria
           <input type="text" class="form-control" name="categoria" ><p>
           
           <select class="browser-default">
                  <option value="" disabled="" selected=""></option>
                  <option value="1">tecnologia 1</option>
                  <option value="2">juegos 2</option>
                </select>
           
             mail
           <input type="email" class="form-control" name="mail" ><p>
           titulo
           <input type="text" class="form-control" name="titulo" > <p>
           contenido
           <input type="text" class="form-control" name="contenido" > <p>
         
           <input type="submit" class="btn btn-primary" value="enviar"  action ="Subir"><p>           


</form>


</body>
</html>