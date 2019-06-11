package com.highradius.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.highradius.model.User;
import com.dataloading.AcctDocHeader;

/**
 * @author HRC
 *
 */
public class UserDataServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7024426494285503866L;
	private static final Logger LOG = LogManager.getLogger(UserDataServlet.class);

	
	
	static Connection con = null;
	static PreparedStatement pst = null;
	static String url = "jdbc:mysql://localhost/mydb";
	static String username = "root";
	static String password = "RootUser@123";
	static String query = null;
	static ResultSet rs = null;
	static int mode = 0;
	
	public static String getQuery(int m, int start) {
		String s = "select * from acct_doc_header";
		
		if(mode == 1)
			s = "select * from acct_doc_header limit "+start+","+(start+25);
		
		if(mode == 2)
			s = "select * from acct_doc_header where isOpen = 1 limit "+start+","+(start+25);
		
		if(m == 3)
			s = "select * from acct_doc_header where isOpen = 0 limit "+start+","+(start+25);
		
		return s;
	}
	
	public static void connect(int start, int mode) {
		
		query = "select * from acct_doc_header limit "+start+","+(start+25);
		//query = getQuery(start, mode);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con = DriverManager.getConnection(url, username, password);
			//con.setAutoCommit(false);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			pst = con.prepareStatement(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			rs = pst.executeQuery();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	public static void disconnect() {
		if(con != null) {
			/*try {
				con.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(pst != null) {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Map<String, Object> data = new HashMap<>();
		List<AcctDocHeader> users = new ArrayList<>();
		
		int start = Integer.parseInt(request.getParameter("start"));
		//mode = Integer.parseInt(request.getParameter("mode"));
		
		connect(start, mode);
		

		
		try {
			
		while(rs.next()) {
			
			AcctDocHeader ob = new AcctDocHeader();
			
			ob.setId(rs.getInt(1));
			ob.setAccountID(rs.getInt(2));
			ob.setDocumentNumberNom(rs.getString(3));
			ob.setCompanyCode(rs.getString(4));
			ob.setFiscalYear(rs.getString(5));
			ob.setBranch(rs.getString(6));
			ob.setCustomerNumberNorm(rs.getString(7));
			ob.setCustomerMapID(Integer.parseInt(rs.getString(8)));
			ob.setDocumentDateNorm(rs.getDate("document_date_norm"));
			ob.setBaselineDateNorm(rs.getDate("baseline_date_norm"));
			ob.setDueDate(rs.getDate(11));
			
			if(rs.getString(12).equals("\\N"))
				ob.setInvoiceNumberNorm(null);
			else
				ob.setInvoiceNumberNorm(rs.getString(12));
			
			ob.setOpenAmountNorm(rs.getDouble(13));
			ob.setPaymentTerms(rs.getString(14));
			ob.setClearingDate(rs.getDate(15));
			ob.setIsOpen(rs.getInt(16));
			ob.setOrderType(rs.getString(17));
			ob.setOrderDate(rs.getDate(18));
			ob.setBusinessArea(rs.getString(19));
			ob.setShipDate(rs.getDate(20));
			ob.setJobId(rs.getInt(21));
			ob.setTaxAmt(rs.getDouble(22));
			ob.setCurrentDisputeAmount(rs.getDouble(23));
			ob.setShipTo(rs.getString(24));
			ob.setDocumentId(rs.getInt(25));
			ob.setDocumentDate(rs.getDate(26));
			ob.setActualOpenAmount(rs.getDouble(27));
			ob.setDueDate(rs.getDate(28));
			ob.setInvoiceAge(rs.getInt(29));
			ob.setIsValidDispute(rs.getInt(30));
			ob.setPostingKey(rs.getString(31));
			ob.setStrategyId(rs.getInt(32));
			ob.setCurrency(rs.getString(33));
			ob.setDebitCreditIndicator(rs.getString(34));
			ob.setValidOpenAmount(rs.getDouble(35));
			ob.setCustomerName(rs.getString(36));
			ob.setRetainageAmount(rs.getDouble(37));
			
			users.add(ob);
			
			
		}
		
		
		
		
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		
		data.put("rows", users);
		data.put("results", users.size());
		
		
		disconnect();
		
		
		
		
		
		String jsonString = getJSONStringFromObject(data);
		// Set response content type
		response.setContentType("application/json");
		try {
			response.getWriter().write(jsonString);
		} catch(IOException e) {
			LOG.error("Unable to write json to HttpResponse" , e);
		}
		
		
	}
	
	
	/**
	 * Convert Object into JSON String
	 * 
	 * @param Object
	 * @return JSON String
	 */
	private String getJSONStringFromObject(Object object) {
		ObjectMapper mapper = new ObjectMapper();                             
		String jsonString = null;
		try {
			jsonString =  mapper.writeValueAsString(object);
		} catch (Exception e) {
			LOG.error("Error while parasing object to json" , e);
		}
		return jsonString;
	}
	
}
