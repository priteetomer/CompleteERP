package controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Fees;
import logic.BLmanager;

/**
 * Servlet implementation class AddProject
 */
@WebServlet("/AddFees")
public class AddFees extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFees() {
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
		    
		String course = request.getParameter("course");
		String fee = request.getParameter("fee");
		
		
		BLmanager bl = new BLmanager();
		Fees  fe = new Fees();

		fe.setcourse(course);
		fe.setfee(fee);

		bl.insert(fe);

		response.sendRedirect("Education/AdminIndex.jsp");
			 
	}

}
