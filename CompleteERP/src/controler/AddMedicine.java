package controler;

import java.io.IOException;

import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import pojo.Medicine;

import logic.BLmanager;

/**
 * Servlet implementation class IncomeServ
 */
@WebServlet("/AddMedicine")
public class AddMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMedicine() {
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
		String mname = request.getParameter("mname");
		Integer mcost = Integer.parseInt(request.getParameter("mcost"));
		String mdate = request.getParameter("mdate");
		String mtype = request.getParameter("mtype");
		String mdesc = request.getParameter("mdesc");
		
	
		Date d = Date.valueOf(mdate);
		
		BLmanager bl = new BLmanager();
		Medicine  ma = new Medicine();

		ma.setmname(mname);
		ma.setmcost(mcost);
		ma.setmdate(d);
		ma.setmtype(mtype);
		ma.setmdesc(mdesc);
		

		bl.insert(ma);

		response.sendRedirect("Health/AdminIndex.jsp");
		  
		  
		  
	}

}
