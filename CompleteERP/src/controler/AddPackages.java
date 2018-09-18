package controler;

import java.io.IOException;

import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import pojo.Medicine;
import pojo.Packg;
import pojo.Test;
import logic.BLmanager;

/**
 * Servlet implementation class IncomeServ
 */
@WebServlet("/AddPackages")
public class AddPackages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPackages() {
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
		String pkname = request.getParameter("pkname");
		Integer pkcost = Integer.parseInt(request.getParameter("pkcost"));
		
		String pkdur = request.getParameter("pkdur");
		String pkdesc = request.getParameter("pkdesc");
		
	
	
		
		BLmanager bl = new BLmanager();
		Packg  pk = new Packg();

		pk.setPkname(pkname);
		pk.setPkcost(pkcost);
		pk.setPkdur(pkdur);
		pk.setPkdesc(pkdesc);

		bl.insert(pk);

		response.sendRedirect("Hospitality/OwnerIndex.jsp");
		  
		  
		  
	}

}
