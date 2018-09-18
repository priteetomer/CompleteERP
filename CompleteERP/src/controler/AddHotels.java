package controler;

import java.io.IOException;

import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Hotel;
import pojo.Medicine;

import logic.BLmanager;

/**
 * Servlet implementation class IncomeServ
 */
@WebServlet("/AddHotels")
public class AddHotels extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHotels() {
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
		String hname = request.getParameter("hname");
		Integer hcost = Integer.parseInt(request.getParameter("hcost"));
		String hdate = request.getParameter("hdate");
		String htype = request.getParameter("htype");
		String hdesc = request.getParameter("hdesc");
		
	
		Date d = Date.valueOf(hdate);
		
		BLmanager bl = new BLmanager();
		Hotel  ha = new Hotel();

		ha.sethname(hname);
		ha.sethcost(hcost);
		ha.sethdate(d);
		ha.sethtype(htype);
		ha.sethdesc(hdesc);

		bl.insert(ha);

		response.sendRedirect("Hospitality/OwnerIndex.jsp");
		  
		  
		  
	}

}
