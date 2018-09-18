package controler;

import java.io.IOException;

import java.sql.Date;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import pojo.Patient;

import logic.BLmanager;

/**
 * Servlet implementation class AddProject
 */
@WebServlet("/AddPatient")
public class AddPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPatient() {
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
		    
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
	
		String contno = request.getParameter("number");
		Date d = Date.valueOf(dob);
		
		BLmanager bl = new BLmanager();
		Patient  pa = new Patient();

		pa.setFname(fname);
		pa.setMname(mname);
		pa.setLname(lname);
		pa.setEmail(email);
		pa.setGender(gender);
		pa.setAddress(address);
		pa.setContactno(contno);
		pa.setDob(d);

		bl.insert(pa);

		response.sendRedirect("Health/AdminIndex.jsp");
			 
	}

}
