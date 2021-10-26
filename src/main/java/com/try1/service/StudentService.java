package com.try1.service;



import com.try1.bean.*;

public interface StudentService {
	public String SignUp(String email,String pwd);
	public Credentials UserCheck(String email, String pwd);
	public Credentials AdminCheck(String email, String pwd);
	public String AddStudentDetails(StudentDetails sd);
	public String AddStudentDetails2(StudentDetails2 sd);
	public String ChangePassword(String emailid, String npwd);
	public Credentials SearchStudent(String emailid);
	public String UpdateStudent(StudentDetails std);
	public String UpdateStudent2(StudentDetails2 std);
	public String ReportUs(Reportus rss);
	public String EducationalDetailsImpl(EducationalDetails ed);
	public Object deleteReport(int id);
}
