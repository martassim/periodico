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
 * Servlet implementation class Consultar
 */
@WebServlet("/Consultar")
public class Consultar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Consultar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("get");
		

		//getServletConfig().getServletContext().getRequestDispatcher("/leer.jsp").forward(request, response);

		 try {
			 
		    PrintWriter out = response.getWriter();		   
			Class.forName("com.mysql.jdbc.Driver");
			
			 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/periodico", "root", "");
			 Statement st = conn.createStatement();
			 ResultSet rs = st.executeQuery("select * from noticias");	
			 
			 
			 
			 String r="";
			
			r += "<table class=\"striped\">";
			r+="<tr>";
			r +="<th> id"; 
			r +="</th>";
			r +="<th> categoria"; 
			r +="</th>";
			r +="<th> mail"; 
			r +="</th>";
			r +="<th> titulo"; 
			r +="</th>";
			r +="<th> fecha"; 
			r +="<th> contenido"; 
			r +="</th>";
			 while(rs.next()) {
				r+="<tr>";
				
				
				r +="<td>";
				r += rs.getString(1);
				r +="</td>";
				r +="<td>";
				r += rs.getString(2);
				r +="</td>";
				r +="<td>";
				r += rs.getString(3);
				r +="</td>";
				r +="<td>";
				r += rs.getString(4);
				r +="</td>";
				r +="<td>";
				r += rs.getString(5);
				r +="</td>";
				r +="<td>";
				r += rs.getString(6);
				r +="</td>";
				 
				r +="</tr>";
				
			 }
			r +="</table>";
			 
			 request.getSession().setAttribute("servletMsg", r );

			 response.sendRedirect("leer.jsp");
			 
			
			 
			 
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
		 
	} 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	}

