package pojo;



import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Registration generated by hbm2java
 */
public class Medicine implements java.io.Serializable {

	private Integer id;
	private String mname;
	private Integer mcost;
	private Date mdate;
	private String mtype;
	private String mdesc;
	public Medicine() {
	}

	public Medicine(  String mname, Integer mcost,
			Date mdate, String mtype, String mdesc) {
		
		this.mname = mname;
		this.mcost = mcost;
		this.mdate = mdate;
		this.mtype = mtype;
		this.mdesc = mdesc;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer Id) {
		this.id = Id;
	}

	public String getmname() {
		return this.mname;
	}

	public void setmname(String mname) {
		this.mname = mname;
	}

	public Integer getmcost() {
		return this.mcost;
	}

	public void setmcost(Integer mcost) {
		this.mcost = mcost;
	}

	public Date getmdate() {
		return this.mdate;
	}

	public void setmdate(Date mdate) {
		this.mdate = mdate;
	}

	public String getmtype() {
		return this.mtype;
	}

	public void setmtype(String mtype) {
		this.mtype = mtype;
	}

	public String getmdesc() {
		return this.mdesc;
	}

	public void setmdesc(String mdesc) {
		this.mdesc = mdesc;
	}

	

	

	
	
}
