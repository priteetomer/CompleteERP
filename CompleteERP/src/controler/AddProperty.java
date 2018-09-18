package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojo.Property;
import logic.BLmanager;

/**
 * Servlet implementation class AddProject
 */
@WebServlet("/AddProperty")
public class AddProperty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProperty() {
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
		// TODO Auto-generated method stub 
		    
		String pname = request.getParameter("pname");
		String dealer = request.getParameter("dealer");
		String country = request.getParameter("country");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		Integer price = Integer.parseInt(request.getParameter("price"));
		String contactno = request.getParameter("contactno");
		
		
		BLmanager bl = new BLmanager();
		Property  pr = new Property();
        
		pr.setPname(pname);
		pr.setDealer(dealer);
		pr.setCountry(country);
		pr.setState(state);
		pr.setCity(city);
		pr.setPrice(price);
		pr.setContactno(contactno);

		bl.insert(pr);

		response.sendRedirect("Real/AgentIndex.jsp");
			 
	}

}
