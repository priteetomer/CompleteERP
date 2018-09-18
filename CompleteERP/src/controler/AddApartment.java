package controler;

import java.io.IOException;

import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Apartment;
import pojo.Medicine;

import logic.BLmanager;

/**
 * Servlet implementation class IncomeServ
 */
@WebServlet("/AddApartment")
public class AddApartment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddApartment() {
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
		String aname = request.getParameter("aname");
		Integer acost = Integer.parseInt(request.getParameter("acost"));
		String atype = request.getParameter("atype");
		String adesc = request.getParameter("adesc");
		String address = request.getParameter("address");
		
		BLmanager bl = new BLmanager();
		Apartment  ap = new Apartment();

		ap.setAname(aname);
		ap.setAcost(acost);
		ap.setAtype(atype);
		ap.setAdesc(adesc);
		ap.setAddress(address);

		bl.insert(ap);

		response.sendRedirect("Real/AgentIndex.jsp");
		  
		  
		  
	}

}
