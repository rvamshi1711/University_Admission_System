package com.try1.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


import com.try1.bean.*;

public class CourseServiceImpl implements CourseService {
	
private JdbcTemplate jt = null;

Connection connection = null;
Statement insertStmt = null;
Statement selectStmt = null;
	
	public CourseServiceImpl()
	{
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
	    dataSource.setDriverClassName("com.mysql.jdbc.Driver");
	    dataSource.setUrl("jdbc:mysql://localhost:3306/uas?useSSL=false");
	    dataSource.setUsername("root");
	    dataSource.setPassword("1234");
	    jt = new JdbcTemplate(dataSource);
	}

	public String addCourse(String cbranch, String cseats, String cduration, String csems, String cdescription) {
		String status="";
		try {
		String in="insert into course_details(cbranch,cseats,cduration,csems,cdescription) values(?,?,?,?,?);";
		String add="alter table preferences add column "+cbranch+" int;";
		String add2="alter table preferencesforstoring add column "+cbranch+" int;";
		//int r1 = jt.update(add, new Object[] {cbranch});
		int r1= jt.update(add);
		int r2= jt.update(add2);
		System.out.println();
		int r = jt.update(in, new Object[] {cbranch, cseats, cduration,csems, cdescription});
		if(r!=0) {
			status="success";
			System.out.println("e suces");
			
		}
		else {
			status="fail";
			System.out.println("e fail");
		}
		return status;
		}
		catch(Exception e) {
			status="fail";
			return status;
		}
	}
	
	public List<CourseDetails> showAllCourses() {
		// TODO Auto-generated method stub
		return jt.query("select * from course_details", new RowMapper<CourseDetails>(){    
	        public com.try1.bean.CourseDetails mapRow(ResultSet rs, int row) throws SQLException {    
	        	CourseDetails c=new CourseDetails();
	            c.setCid(rs.getInt("cid"));
	            c.setCbranch(rs.getString("cbranch"));
	            c.setCseats(rs.getInt("cseats"));
	            c.setCdescription(rs.getString("cdescription"));
	            c.setCduration(rs.getInt("cduration"));
	            c.setCsems(rs.getInt("csems"));
	            
	            return c;    
	        }  
		});
	}
	
	
	public Object deleteCourse(String cid) {
		// TODO Auto-generated method stub
		String b="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uas","root","1234");

			// for adding row
			Statement stmt = con.createStatement();
			ResultSet  rs = stmt.executeQuery("Select * from course_details where cid="+cid+";");
			
			while(rs.next())
			{
				//System.out.println(rs.getString("emailid") + "\t" + rs.getInt("marks12") + "\t");
						b = rs.getString("cbranch");
						String del = "alter table preferences drop column "+b+";";
						int r2 = jt.update(del);
						
			}
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		String delcmd = "Delete from course_details where cid=?";
		String status = "";
		int r = jt.update(delcmd, new Object[] {cid});
		if(r!=0)
			status ="success";
		else
			status="fail";
		return status;
	}
	
	public CourseDetails update1(int cid) {
		// TODO Auto-generated method stub
		String sql="select * from course_details where cid=?"; 
		System.out.println("update1 impl");
		   return jt.queryForObject(sql, new Object[]{cid},new BeanPropertyRowMapper<CourseDetails>(CourseDetails.class)); 
		}
	
	public String updateCourse(CourseDetails cd,String oldbranch) {
		// TODO Auto-generated method stub
		String status= "";
		System.out.println("update impl");
		 String sql="update course_details set cbranch='"+cd.getCbranch()+"',cseats='"+cd.getCseats()+"',cdescription='"+cd.getCdescription()+"', cduration="+cd.getCduration()+",csems='"+cd.getCsems()+"' where cid="+cd.getCid()+"";    
		 System.out.println(sql); 
		 String sql2 = "alter table preferences change " +oldbranch+ " "+cd.getCbranch()+" varchar(20);";
		 String sql3 = "alter table preferencesforstoring change " +oldbranch+ " "+cd.getCbranch()+" varchar(20);";
		 int r= jt.update(sql); 
		 int r1 = jt.update(sql2);
		 int r2 = jt.update(sql3);
		 if(r!=0)
				status = "success";
		else
				status = "fail";
		return status;
		//1min in call
	}
	
	public String insertBranchPref(String emailid,String marks12) {
		// TODO Auto-generated method stub
		String status="";
		String in="insert into preferences(emailid,marks12) values(?,?);";
		String in2="insert into preferencesforstoring(emailid,marks12) values(?,?);";
		int r1= jt.update(in2,new Object[] {emailid,marks12});
		int r=jt.update(in,new Object[] {emailid,marks12});
		if(r!=0) {
			status="success";
			System.out.println("e suces");
			
		}
		else {
			status="fail";
			System.out.println("e fail");
		}
		return status;
	}
	
	
	public String insertBranchPref2(String emailid,String branch, String pref) {
		// TODO Auto-generated method stub
		String status="";
		 
		
		String up ="update preferences set "+branch+"= "+pref+" where emailid= '"+emailid+"';";
		String up2 ="update preferencesforstoring set "+branch+"= "+pref+" where emailid= '"+emailid+"';";
		int r1 = jt.update(up);
		int r2 = jt.update(up2);
		
		//int r = jt.update(in, new Object[] {emailid,branch,pref,marks12});
		if(r1!=0) {
			status="success";
			System.out.println("e suces");
			
		}
		else {
			status="fail";
			System.out.println("e fail");
		}
		return status;
	}

	public List<ApplyCollege> showAllApplyAdmission() {
		// TODO Auto-generated method stub
		return jt.query("select * from apply_admission", new RowMapper<ApplyCollege>(){    
	        public com.try1.bean.ApplyCollege mapRow(ResultSet rs, int row) throws SQLException {    
	        	ApplyCollege c=new ApplyCollege();
	            c.setEmailId(rs.getString("emailid"));
	            c.setBranchName(rs.getString("branch"));
	            c.setPref(rs.getInt("pref"));
	            c.setMarks12(rs.getInt("maarks12"));
	            return c;    
	        }  
		});
	}
	
	
	public List<String> showAllApplyAdmission2(List<String> branch, int z) {
		// TODO Auto-generated method stub
		List<String> ls = new ArrayList<String>();//all emials
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uas","root","1234");

			// for adding row
			Statement stmt = con.createStatement();
			ResultSet  rs = stmt.executeQuery("Select * from preferences");
			
			//for(int i=0;i<branch.size();i++)
			//{
			//	System.out.println(branch.get(i));
			//}
			//success
			while(rs.next())
			{
				//System.out.println(rs.getString("emailid") + "\t" + rs.getInt("marks12") + "\t");
						String b = rs.getString("emailid");
						ls.add(b);
						int c = rs.getInt("marks12");
						ls.add(Integer.toString(c));
						for(int i=0;i<branch.size();i++)
						{
							int a= rs.getInt(branch.get(i));
							ls.add(Integer.toString(a));
							
						}
						// Map<String,<List<String>> qwe = new HashMap<String,List<
				//success bro 1min 
					
			}
			for(int i=0;i<ls.size();i++)
			{
				System.out.println(ls.get(i));
			}

		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return ls;
	}
	
	public List<String> showAllEmails(List<String> branch) {
		// TODO Auto-generated method stub
		List<String> em = new ArrayList<String>();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uas","root","1234");

			// for adding row
			Statement stmt = con.createStatement();
			ResultSet  rs = stmt.executeQuery("Select * from preferences");
			
			//for(int i=0;i<branch.size();i++)
			//{
			//	System.out.println(branch.get(i));
			//}
			
			while(rs.next())
			{
				//System.out.println(rs.getString("emailid") + "\t" + rs.getInt("marks12") + "\t");
						String b = rs.getString("emailid");
						em.add(b);
						
				//success bro 1min 
					
			}
			

		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return em;
	}
	
	
	public List<Reportus> showAllReports() {
		// TODO Auto-generated method stub
		return jt.query("select * from report", new RowMapper<Reportus>(){    
	        public com.try1.bean.Reportus mapRow(ResultSet rs, int row) throws SQLException {    
	        	Reportus r=new Reportus();
	        	r.setId(rs.getInt("id"));
	            r.setEmailid(rs.getString("emailid"));
	            r.setPhoneno(rs.getString("phoneno"));
	            r.setTitle(rs.getString("title"));
	            r.setDescription(rs.getString("descrip"));
	            
	            return r;    
	        }  
		});
	}

	public String result(String drop,String emailid) {
		// TODO Auto-generated method stub
		
		String status="";
		/*
		String[] na = new String[3];
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uas","root","1234");
			Statement stmt = con.createStatement();
			
			ResultSet  rs = stmt.executeQuery("Select * from student_details where emailid='"+res[0]+"';");
			System.out.println("Select * from student_details2 where emailid='"+res[0]+"';");
			while(rs.next())
			{
				
						na[0] = rs.getString("firstname");
			
			}
			
			ResultSet  rs2 = stmt.executeQuery("Select * from educational_details where emailid='"+res[0]+"';");
			System.out.println("Select * from educational_details where emailid='"+res[0]+"';");
			
			while(rs2.next())
			{
		
						na[1] = String.valueOf(rs2.getInt("percentage12"));
							
			}
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		*/
		String a = "insert into result_table values( '"+emailid+"','"+drop+"');";
		System.out.println(a);
		String b = "delete from preferences where emailid='"+emailid+"';";
		System.out.println(b);
		int r1 = jt.update(b);
		int r = jt.update(a);
		if(r!=0) {
			status="success";
			System.out.println("e suces");
			
		}
		else {
			status="fail";
			System.out.println("e fail");
		}
		return status;
	}
	
	public String rejectappl(String emailid) {
		// TODO Auto-generated method stub
		
		String status="";
		
		String a = "insert into rejectedlist values( '"+emailid+"' );";
		
		String b = "delete from preferences where emailid='"+emailid+"';";
		System.out.println(b);
		int r1 = jt.update(b);
		int r = jt.update(a);
		if(r!=0) {
			status="success";
			System.out.println("e suces");
			
		}
		else {
			status="fail";
			System.out.println("e fail");
		}
		return status;
	}
	
	
	public List<ViewResults> showAllResults() {
		// TODO Auto-generated method stub
		return jt.query("select * from result_table", new RowMapper<ViewResults>(){    
	        public com.try1.bean.ViewResults mapRow(ResultSet rs, int row) throws SQLException {    
	        	ViewResults r=new ViewResults();
	        	System.out.println(rs.getString("emailid"));
	        	System.out.println(rs.getString("branch"));
	            r.setEmailid(rs.getString("emailid"));
	            r.setBranch(rs.getString("branch"));
	            return r;    
	        }  
		});
	}

	

	
	

}
