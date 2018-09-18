package controler;

import java.io.IOException;

import java.sql.Date;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import pojo.Patient;
import pojo.Student;
import logic.BLmanager;

/**
 * Servlet implementation class AddProject
 */
@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudent() {
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
		String course = request.getParameter("course");
		Date d = Date.valueOf(dob);
		
		BLmanager bl = new BLmanager();
		Student  sa = new Student();

		sa.setFname(fname);
		sa.setMname(mname);
		sa.setLname(lname);
		sa.setEmail(email);
		sa.setGender(gender);
		sa.setAddress(address);
		sa.setContactno(contno);
		sa.setDob(d);
		sa.setcourse(course);

		bl.insert(sa);

		response.sendRedirect("Education/AdminIndex.jsp");
			 
	}

}
