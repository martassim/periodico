package basico;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Subir
 */
@WebServlet("/Subir")
public class Subir extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Subir() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String categoria = request.getParameter("categoria");
		String mail = request.getParameter("mail");
		String titulo = request.getParameter("titulo");
		String contenido = request.getParameter("contenido");
		
		 PrintWriter out = response.getWriter();		   
		  
         try {
 
             Class.forName("com.mysql.jdbc.Driver");
 
         	
			 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/periodico", "root", "");
     		
      
             PreparedStatement ps = conn.prepareStatement("INSERT INTO noticias (IDcategoria,titulo,contenido,mail) VALUES (?,?,?,?)");
				
                ps.setString(1, categoria);
				ps.setString(2, titulo);
				ps.setString(3, contenido);
				ps.setString(4, mail);
				ps.executeUpdate();
				System.out.println("insertada fila");
             
	  
	  } catch (ClassNotFoundException e) {		  
          e.printStackTrace();		  
      } catch (SQLException e) {		  
        e.printStackTrace();		  
      } finally {
		              if(out != null)

              out.close();		  
      }
      }


}






