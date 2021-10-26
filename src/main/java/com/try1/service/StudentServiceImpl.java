package com.try1.service;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.try1.bean.*;
import com.try1.bean.Credentials;
import com.try1.bean.Reportus;
import com.try1.bean.StudentDetails;

public class StudentServiceImpl implements StudentService{
	
private JdbcTemplate jt = null;
	
	public StudentServiceImpl()
	{
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/uas?useSSL=false");
        dataSource.setUsername("root");
        dataSource.setPassword("1234");
        jt = new JdbcTemplate(dataSource);
	}
	
	public Credentials UserCheck(String email, String pwd) {
		// TODO Auto-generated method stub
		try
		{
			String userchk = "Select * from credentials where emailid=? and pwd=?";
			Credentials chk = null;		
			chk = jt.queryForObject(userchk, new Object[]{email, pwd}, new BeanPropertyRowMapper<Credentials>(Credentials.class));
			System.out.println(chk.getEmailid()+" "+chk.getPwd());
			return chk;
		}
		catch(Exception ex)
		{
			return null;
		}
		
	}

	public Credentials AdminCheck(String email, String pwd) {
		// TODO Auto-generated method stub
		try
		{
			String userchk = "Select * from admin_credentials where emailid=? and pwd=?";
			Credentials chk = null;		
			chk = jt.queryForObject(userchk, new Object[]{email, pwd}, new BeanPropertyRowMapper<Credentials>(Credentials.class));
			System.out.println(chk.getEmailid()+" "+chk.getPwd());
			return chk;
		}
		catch(Exception ex)
		{
			return null;
		}
	}

	public String AddStudentDetails(StudentDetails sd) {
		// TODO Auto-generated method stub
		String status = "";
		String inscmd = "Insert into student_details(firstname,lastname,emailid,address) values(?,?,?,?)";
		int r = jt.update(inscmd, new Object[] {sd.getFirstname(),sd.getLastname(),sd.getEmailid(),sd.getAddress()});
		if(r!=0)
			status = "success";
		else
			status = "fail";
		return status;
	}
	
	public String AddStudentDetails2(StudentDetails2 sd)
	{
		String status="";
		String inscmd="Insert into student_details2(firstname,lastname,emailid,DOB,mn,gender,fathername,fmn,mothername,mmn,add1,add2,pincode) values(?,?,?,?,?,?,?,?,?,?,?,?,?);";
		int r = jt.update(inscmd, new Object[] {sd.getFirstname(),sd.getLastname(),sd.getEmailid(),sd.getDOB(),sd.getMn(),sd.getGender(),sd.getFathername(),sd.getFmn(),sd.getMothername(),sd.getMmn(),sd.getAdd1(),sd.getAdd2(),sd.getPincode()});
		System.out.println(inscmd);
		if(r!=0)
			status = "success";
		else
			status = "fail";
		return status;
	}

	public String ChangePassword(String npwd, String emailid) {
		// TODO Auto-generated method stub
		
		String status = "";
		/*String uptcmd = "Update Credentials set pwd=? where emailid=?";
		int r = jt.update(uptcmd, new Object[] {npwd, emailid});
		*/
		String uptcmd = "Update credentials set pwd= '"+npwd+"' where emailid= '"+emailid+"'";
		System.out.println(uptcmd);
		int r = jt.update(uptcmd);
		if(r!=0)
			status ="success";
		else
			status= "fail";
		return status;
	}

	public Credentials SearchStudent(String emailid) {
		// TODO Auto-generated method stub
		try {
			String uptcmd = "select * from credentials where emailid= ?";
			Credentials chk = null;		
			chk = jt.queryForObject(uptcmd, new Object[]{emailid}, new BeanPropertyRowMapper<Credentials>(Credentials.class));
			return chk;
		}
		catch(Exception e) {
			return null;
		}
	}

	public String UpdateStudent(StudentDetails std) {
		// TODO Auto-generated method stub
		String status = "";
		String uptcmd= "update student_details set firstname= '"+std.getFirstname()+"', lastname= '"+std.getLastname()+"', address= '"+std.getAddress()+"' where emailid= '"+std.getEmailid()+"';";    
		System.out.println(uptcmd);
		int r= jt.update(uptcmd);
		if(r!=0)
			status ="success";
		else
			status= "fail";
		return status;
		
	}

	
	public String UpdateStudent2(StudentDetails2 std) {
		// TODO Auto-generated method stub
		String status = "";
		String uptcmd2= "update student_details2 set firstname=?, lastname= ?,DOB= ?,gender= ?,fathername=?,fmn=?,mothername= ?,mmn =?,add1 =?,add2=?, pincode=? where emailid =?;";
		int r2 = jt.update(uptcmd2, new Object[] {std.getFirstname(),std.getLastname(),std.getDOB(),std.getGender(),std.getFathername(),std.getFmn(),std.getMothername(),std.getMmn(),std.getAdd1(),std.getAdd2(),std.getPincode(),std.getEmailid()});
		String uptcmd= "update student_details2 set firstname= '"+std.getFirstname()+"', lastname= '"+std.getLastname()+"', DOB= '"+std.getDOB()+"',gender= '"+std.getGender()+"',fathername= '"+std.getFathername()+"',fmn= '"+std.getFmn()+"',mothername= '"+std.getMothername()+"',mmn ='"+std.getFmn()+"',add1 ='"+std.getAdd1()+"',add2='"+std.getAdd2()+"', pincode='"+std.getPincode()+"'  where emailid= '"+std.getEmailid()+"';";    
		System.out.println(uptcmd);
		int r= jt.update(uptcmd);
		if(r2!=0)
			status ="success";
		else
			status= "fail";
		return status;
		
	}

	
	public String ReportUs(Reportus rss) {
		// TODO Auto-generated method stub
		String status = "";
		String uptcmd = "Insert into report(emailid,phoneno,title,descrip) values(?,?,?,?);";
		int r = jt.update(uptcmd, new Object[] {rss.getEmailid(),rss.getPhoneno(),rss.getTitle(),rss.getDescription()});
		if(r!=0)
			status = "success";
		else
			status = "fail";
		return status;
	}

	public String SignUp(String email, String pwd) {
		// TODO Auto-generated method stub
		String status = "";
		try {
		String uptcmd = "Insert into Credentials values(?,?);";
		int r = jt.update(uptcmd, new Object[] {email,pwd});
		if(r!=0)
			status = "success";
		else
			status = "fail";
		return status;	
		}
		catch(Exception e)
		{
			status="fail";
			return status;
		}
		
	}
	
	public String EducationalDetailsImpl(EducationalDetails ed) {
		String status = "";
		String uptcmd= "insert into educational_details(emailid,board10,board12,percentage10,percentage12) values(?,?,?,?,?);";
		int r= jt.update(uptcmd,new Object[] {ed.getEmailid(),ed.getBoard10(),ed.getBoard12(),ed.getPercentage10(),ed.getPercentage12()});
		if(r!=0)
			status = "success";
		else
			status = "fail";
		return status;
		}

	
	public Object deleteReport(int id) {
		// TODO Auto-generated method stub
		String delcmd = "Delete from report where id=?";
		String status = "";
		int r = jt.update(delcmd, new Object[] {id});
		if(r!=0)
		{
			System.out.println("success12");
			status ="success";
		}
		else
		{
			System.out.println("fail");
			status="fail";
		}
		return status;
	}
}
