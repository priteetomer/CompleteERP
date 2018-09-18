package controler;

import java.io.IOException;

import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import pojo.Medicine;
import pojo.Test;
import logic.BLmanager;

/**
 * Servlet implementation class IncomeServ
 */
@WebServlet("/AddTest")
public class AddTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tname = request.getParameter("tname");
		Integer tcost = Integer.parseInt(request.getParameter("tcost"));
		
		String tdur = request.getParameter("tdur");
		String tdesc = request.getParameter("tdesc");
		
	
	
		
		BLmanager bl = new BLmanager();
		Test  ta = new Test();

		ta.settname(tname);
		ta.settcost(tcost);
		ta.settdur(tdur);
		ta.settdesc(tdesc);
		

		bl.insert(ta);

		response.sendRedirect("Health/AdminIndex.jsp");
		  
		  
		  
	}

}
