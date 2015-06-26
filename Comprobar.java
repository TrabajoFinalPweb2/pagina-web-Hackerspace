package episunsa;
import episunsa.Personahs;
import episunsa.PMF;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Properties;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;

import java.io.IOException;

@SuppressWarnings("serial")
public class Comprobar extends HttpServlet { 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		final Query q = pm.newQuery(Personahs.class);
	try{
		String username="";
		String password="";
		
		if (request.getParameter("username")!=null)
			username=request.getParameter("username");
		
		if(request.getParameter("password")!=null )
			password=request.getParameter("password");
		
		if((username.equals("admin") && password.equals("12345678"))){
			List<Personahs> personas = (List<Personahs>) q.execute(username);
			request.setAttribute("personas", personas);
			RequestDispatcher view= request.getRequestDispatcher("/WEB-INF/index-admin.jsp");
			view.forward(request, response);
		}
		
		
			Query qpassword = pm.newQuery(Personahs.class);
			qpassword.setFilter("password == passwordParam");
			qpassword.declareParameters("String passwordParam");
			
		try{
			List<Personahs> personas = (List<Personahs>) qpassword.execute(password);
		
		
	    	
	    	  if(personas.size()!=0){
	             HttpSession sesion = request.getSession(true);
	             request.setAttribute("username",username); 
	             sesion.setAttribute("username", username);
	             RequestDispatcher view= request.getRequestDispatcher("/WEB-INF/index-user.jsp");
	             view.forward(request, response);
				
	    	  }
	    	  else {
	    		  RequestDispatcher view= request.getRequestDispatcher("/login.jsp");
	    	  }			
		}
		finally{
			 qpassword.closeAll();
		}		
	}
	finally{ out.close();}
	}
}
		

