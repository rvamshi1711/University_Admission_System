package com.try1.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.protobuf.TextFormat.ParseException;
import com.try1.bean.*;
import com.try1.service.CourseServiceImpl;
import com.try1.service.StudentServiceImpl;

@Controller
@SessionAttributes({"cviewinfo"})
public class StudentController {
	
	String filepath = "resources"+ File.separator+ "uploadimagesonlyreportus" + File.separator;
	
	StudentServiceImpl ss = new StudentServiceImpl();
	CourseServiceImpl cs= new CourseServiceImpl();
	
	@RequestMapping(value="addCourse", method = RequestMethod.GET)
	public String addCourse()
	{
		return "AddCourse";
	}
	
	@RequestMapping(value="adminHome", method = RequestMethod.GET)
	public String adminHome()
	{
		return "Awelcome";
	}
	
	
	@RequestMapping(value="home", method = RequestMethod.GET)
	public String home()
	{
		return "HomePage";
	}
	
	@RequestMapping(value="sHome", method = RequestMethod.GET)
	public String sHome()
	{
		return "Swelcome2";
	}
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String Login()
	{
		return "LoginFun";
	}
	
	@RequestMapping(value="changePassword", method = RequestMethod.GET)
	public String Chng()
	{
		return "AChangePassword";
	}
	
	@RequestMapping(value="signup", method = RequestMethod.POST)
	public String signup(@RequestParam("txtnEmail") String emailid, @RequestParam("txtnPwd") String pwd,Model m)
	{
		String st = ss.SignUp(emailid,pwd);
		if(st.equals("success"))
		{
			System.out.println("success signup");
			return "redirect:/login";
		}
			
		else {
			System.out.println("SignUp Failed");
			m.addAttribute("ss","<div class=\"alert alert-danger\" role=\"alert\" style=\"text-align:center;\">Emailid already exists</div>");
			return "LoginFun";
		}
			
	}
	
	@RequestMapping(value="/loginprocess", method= RequestMethod.POST)
	public String loginprocess(@RequestParam("Lusername") String emailid, @RequestParam("Lpassword") String pwd, Model m)
	{
		String st= null;
		try {
			Credentials c1 = ss.UserCheck(emailid, pwd);
			if(c1!=null)
			{						
				m.addAttribute("cviewinfo", c1);					
				st = "Swelcome2";	
			}	
			else
			{
				Credentials c2 = ss.AdminCheck(emailid,pwd);
				if(c2!=null)
				{
					m.addAttribute("cviewinfo", c2);
					st="Awelcome";
				}
				else
				{
					String ss= "Invalid Username or Password";
					m.addAttribute("ss","<div class=\"alert alert-danger\" role=\"alert\" style=\"text-align:center;\">Invalid username or password</div>");
					System.out.println("none");
					st = "LoginFun";
					
				}
			}
		}
		catch(Exception e)
		{
			st = "redirect:/errPage";
		}
		
		
		return st;
	}
	
	@RequestMapping(value="/errPage", method=RequestMethod.GET)
	public String LoginFail() {
		return "ErrorCredentials";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String ShowCustomer() {
		return "AddStudentDetails";
	}
	
	@RequestMapping(value="/addProfile", method=RequestMethod.GET)
	public String addProfile() {
		return "ViewStudentDetails";
	}
	
	@RequestMapping(value="/viewstudentfromadmin", method=RequestMethod.GET)
	public String viewsfroma(@RequestParam("emailid") String emailid,HttpSession session) {
		session.setAttribute("emailid", emailid);
		return "ViewStudentDetails2";
	}
	
	@RequestMapping(value="/studentdetailsprocess2", method=RequestMethod.POST)
	public String studentdetailsprocess2(HttpServletRequest request, HttpServletResponse response) throws java.text.ParseException
	{
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String emailid = request.getParameter("emailid");
		//System.out.println("1");
		String DOB = request.getParameter("DOB");
		System.out.println(DOB);
		//System.out.println("2");
		String mn = request.getParameter("mn");
		String gender = request.getParameter("gender");
		String fathername = request.getParameter("fathername");
		String fmn = request.getParameter("fmn");
		String mothername = request.getParameter("mothername");
		String mmn = request.getParameter("mmn");
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String pincode = request.getParameter("pincode");
		
		//System.out.println("3");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date d1 = (Date) df.parse(DOB);
		System.out.println(d1);
		//System.out.println(df.format(d1));
		
		//System.out.println("4");
		StudentDetails2 sd = new StudentDetails2();
		sd.setFirstname(firstname);
		sd.setLastname(lastname);
		sd.setEmailid(emailid);
		sd.setDOB(d1);
		sd.setMn(mn);
		sd.setGender(gender);
		sd.setFathername(fathername);
		sd.setFmn(fmn);
		sd.setMothername(mothername);
		sd.setMmn(mmn);
		sd.setAdd1(add1);
		sd.setAdd2(add2);
		sd.setPincode(pincode);
		String st = ss.AddStudentDetails2(sd);
		if(st.equals("success"))
			return "redirect:/sdview";
		else
			return "redirect:/addProfile";
		
	}
	
	@RequestMapping(value="/studentdetailsprocess", method=RequestMethod.POST)
	public String studentdetailsprocess(HttpServletRequest request, HttpServletResponse response)
	{
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String emailid = request.getParameter("emailid");
		String address = request.getParameter("address");
		
		StudentDetails sd = new StudentDetails();
		sd.setFirstname(firstname);
		sd.setLastname(lastname);
		sd.setEmailid(emailid);
		sd.setAddress(address);
		
		String st = ss.AddStudentDetails(sd);
		if(st.equals("success"))
			return "redirect:/sdview";
		else
			return "redirect:/add";
		
	}
	
	@RequestMapping(value="/sdview", method=RequestMethod.GET)
	public String GetCustomer() {
		
		return "Swelcome2";
	}
	
	@RequestMapping(value="/changepwdprocess", method=RequestMethod.POST)
	public String changepwdprocess(HttpServletRequest request, HttpServletResponse response, Model m) {
		String npwd = request.getParameter("txtnPwd");
		String cpwd = request.getParameter("txtcPwd");
		String emailid = request.getParameter("txtEmail");
		System.out.println(emailid);
		//String email = request.getParameter("txtEmail");
		//String pwd = request.getParameter("txtPwd");
		String pg=null;
		System.out.println("1");
		if(npwd.equals(cpwd))
		{
			System.out.println("2");
			String st = ss.ChangePassword(npwd, emailid);
			if(st.equals("success"))
			{	
				System.out.println("done");
				pg = "redirect:/sdview";
			}
			else {
				System.out.println("3");
			}
		}
		return pg;
	}
	
	@RequestMapping(value="/cpwd", method=RequestMethod.GET)
	public String ChangePwd() {
		return "ChangePassword2";
	}
	
	@RequestMapping(value="/modStd", method=RequestMethod.POST)
	public String modStudentDetails(HttpServletRequest request, HttpServletResponse response, Model m) {
		String emailid = request.getParameter("txtEmail");
		Credentials c1 = ss.SearchStudent(emailid);
		if(c1!=null)
		{
			m.addAttribute("std", c1);
			return "UpdateStudent";
		}
		return null;
	}
	
	@RequestMapping(value="/modStd2", method=RequestMethod.POST)
	public String modStudentDetails2(HttpServletRequest request, HttpServletResponse response, Model m) {
		String emailid = request.getParameter("txtEmail");
		Credentials c1 = ss.SearchStudent(emailid);
		if(c1!=null)
		{
			m.addAttribute("std", c1);
			return "UpdateStudentDetails2";
		}
		return null;
	}
	
	@RequestMapping(value="/StdUpdateProcess", method=RequestMethod.POST)
	public String UpdateStudentDetails(HttpServletRequest request, HttpServletResponse response)
	{
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String emailid = request.getParameter("emailid");
		String address = request.getParameter("address");
		
		StudentDetails sd = new StudentDetails();
		sd.setFirstname(firstname);
		sd.setLastname(lastname);
		sd.setEmailid(emailid);
		sd.setAddress(address);
		
		String st = ss.UpdateStudent(sd);
		if(st.equals("success"))
			return "redirect:/sdview";
		else {
			System.out.println("error updating");
			return "redirect:/home";
		}
	}
	
	@RequestMapping(value="/StdUpdateProcess2", method=RequestMethod.POST)
	public String UpdateStudentDetails2(HttpServletRequest request, HttpServletResponse response) throws java.text.ParseException
	{
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String emailid = request.getParameter("emailid");
		//System.out.println("1");
		String DOB = request.getParameter("DOB");
		System.out.println(DOB);
		//System.out.println("2");
		String mn = request.getParameter("mn");
		String gender = request.getParameter("gender");
		System.out.println(gender);
		String fathername = request.getParameter("fathername");
		String fmn = request.getParameter("fmn");
		String mothername = request.getParameter("mothername");
		String mmn = request.getParameter("mmn");
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String pincode = request.getParameter("pincode");
		
		//System.out.println("3");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date d1 = (Date) df.parse(DOB);
		System.out.println(d1);
		//System.out.println(df.format(d1));
		
		//System.out.println("4");
		StudentDetails2 sd = new StudentDetails2();
		sd.setFirstname(firstname);
		sd.setLastname(lastname);
		sd.setEmailid(emailid);
		sd.setDOB(d1);
		sd.setMn(mn);
		sd.setGender(gender);
		sd.setFathername(fathername);
		sd.setFmn(fmn);
		sd.setMothername(mothername);
		sd.setMmn(mmn);
		sd.setAdd1(add1);
		sd.setAdd2(add2);
		sd.setPincode(pincode);
		String st = ss.UpdateStudent2(sd);
		if(st.equals("success"))
			return "redirect:/sdview";
		else
			return "redirect:/addProfile";
	}
	
	@RequestMapping(value="reportusas", method=RequestMethod.POST)
	public String reportus(@RequestParam("emailid") String emailid,@RequestParam("phoneno") String phoneno,@RequestParam("title") String title,@RequestParam("description") String description,HttpServletRequest servletRequest,HttpSession s, Model m) throws IOException
	{
		
		System.out.println("success");
		Reportus rss =new Reportus();
		rss.setEmailid(emailid);
		rss.setPhoneno(phoneno);
		rss.setTitle(title);
		rss.setDescription(description);
		
	
	   
		System.out.println("success");
		String st = ss.ReportUs(rss);
		if(st.equals("success"))
		{
			System.out.println("success");
			return "redirect:/home";
		}
		else {
			System.out.println("error updating");
			return "redirect:/errPage";
		}
	}
	
	@RequestMapping(value="ChangePassword",method=RequestMethod.GET)
	public String ChangePassword()
	{
		return "ChangePassword3";
	}
	
	
	@RequestMapping(value="/addCourseProcess", method=RequestMethod.POST)
	public String courseProcess(
			@RequestParam("tcbranch") String cbranch,@RequestParam("tcseats") String cseats,
			@RequestParam("tcdescription") String cdescription,@RequestParam("tcduration") String cduration,
			@RequestParam("tcsems") String csems,Model m) {
		
		String st=cs.addCourse(cbranch,cseats,cduration,csems,cdescription);
		if(st.equals("success")) {
			System.out.println("c suces");
			m.addAttribute("added","<div class=\"alert alert-success\" role=\"alert\" style=\"text-align:center;\">Course Added Successfully!</div>");
			return "AddCourse";	
		}
		else {
			System.out.println("c fail");
			m.addAttribute("added","<div class=\"alert alert-danger\" role=\"alert\" style=\"text-align:center;\">Branch Name is already Exists!</div>");
			return "AddCourse";	
		}
		
		
	}
	
	@RequestMapping(value="ListCoursesS", method = RequestMethod.GET)
	public String ListCoursesS()
	{
		return "ListAllCoursesForStudent";
	}
	
	@RequestMapping(value="/ViewCourse", method=RequestMethod.GET)
	public String ShowAllCustomer(Model m) {
		List<CourseDetails>  courseList = cs.showAllCourses();
		m.addAttribute("list",courseList);
		return "ListAllCoursesForStudent";
	}
	
	@RequestMapping(value="/AViewCourse", method=RequestMethod.GET)
	public String AViewCourse(Model m) {
		List<CourseDetails>  courseList = cs.showAllCourses();
		m.addAttribute("list",courseList);
		return "AViewCourse";
	}
	
	@RequestMapping(value="/delcourse/{id}", method=RequestMethod.GET)
	public String delcourse(@PathVariable String id) {
		String st = "";
		if(cs.deleteCourse(id).equals("success"))
			st="redirect:/AViewCourse";
		return st;
	}
	
	@RequestMapping(value="/editCourse/{cid}")    
    public String edit(@PathVariable int cid, Model m){    
        CourseDetails cd=cs.update1(cid);    
		System.out.println("update1 controler");
        m.addAttribute("cd",cd);  
        return "courseEditForm";    
    }  
	
	@RequestMapping(value="/editCourseProcess",method = RequestMethod.POST)    
    public ModelAndView editsave(
    		@RequestParam("tcid") int cid,
    		@RequestParam("tbranchname") String oldbranch,
    		@RequestParam("tcbranch") String cbranch,@RequestParam("tcseats") int cseats,
			@RequestParam("tcdescription") String cdescription,@RequestParam("tcduration") int cduration,
			@RequestParam("tcsems") int csems,
			ModelAndView m
    		){   
		CourseDetails cd = new CourseDetails();
		cd.setCid(cid);
		cd.setCbranch(cbranch);
		cd.setCseats(cseats);
		cd.setCduration(cduration);
		cd.setCsems(csems);
		cd.setCdescription(cdescription);
		
        String ss= cs.updateCourse(cd,oldbranch);
        System.out.println("update controler");
        if(ss.equals("success")) {
			System.out.println("c suces");
			m.addObject("added","<div class=\"alert alert-success\" role=\"alert\" style=\"text-align:center;\">Course Edited Successfully!</div>");
			m.setViewName("Awelcome");	
		}
		else {
			System.out.println("c fail");
			m.setViewName("Error");	
		}
		return m;  
    }  
	
	
	@RequestMapping(value="/ApplyAdmission", method = RequestMethod.GET)
	public String applyAdmission(Model m)
	{
		List<CourseDetails>  courseList = cs.showAllCourses();
		System.out.println(courseList.toString());
		m.addAttribute("list",courseList);
		int bs=courseList.size();
		m.addAttribute("bs",bs);
		return "ApplyAdmission";
	}
	
	@RequestMapping(value="/applyAdmission" , method=RequestMethod.POST)
	public String coursecb(HttpServletRequest request,HttpServletResponse response,Model ma) {
		String [] branch=new String[50];
		String [] pref=new String[50];
	
		String emailid = request.getParameter("emailid");
		String marks12 = request.getParameter("marks12");
		int i=0;
		
		List<CourseDetails> courses=cs.showAllCourses();
		for(CourseDetails c:courses) {
			branch[i]=c.getCbranch();
			
			System.out.println(branch[i]);
			i++;
		}
		
		int j=0;
		for(String s:branch) {
			pref[j]=request.getParameter(s);
			j++;
			if(j==i) {
				break;
			}
		}
		
		for(int m=0;m<i;m++) {
			int start=Integer.parseInt(pref[m]);
			System.out.println(start);
			for(int n=m+1;n<i;n++) {
				int start1=Integer.parseInt(pref[n]);
				System.out.println(start+"vs"+start1);
				if(start==start1) {
					System.out.println("dup");
					List<CourseDetails>  courseList = cs.showAllCourses();
					System.out.println(courseList.toString()+"hello");
					//int bs=courseList.size();
					ma.addAttribute("list",courseList);
					  ma.addAttribute("msg","<div class=\"alert alert-danger col-md-8 \" role=\"alert\" style=\"text-align:center;\">Do not enter duplicate preferences</div>");
					return "ApplyAdmission";
				}
			}
		}
		
		String s1= cs.insertBranchPref(emailid,marks12);
		System.out.println(s1); 
		
		for(int k=0;k<j;k++) {
			System.out.println(pref[k]);
			System.out.println(branch[k]);
			
			String st=cs.insertBranchPref2(emailid,branch[k],pref[k]);
			if(st.equals("success")) {
				System.out.println("c suces");
				
			}
			else {
				System.out.println("c fail");
				return "Error";
			}
		}
		
		return "ApplyAdmission";
	}
	
	@RequestMapping(value="/ViewApplications", method=RequestMethod.GET)
	public String ViewApplications(Model m) {
		List<ApplyCollege>  applyCollege = cs.showAllApplyAdmission();
		m.addAttribute("list",applyCollege);
		return "ViewApplications";
	}
	
	
	@RequestMapping(value="/ViewApplications2", method=RequestMethod.GET)
	public String ViewApplications2(Model m,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		List<String> branch = new ArrayList<String>();
		int i=0;
		int columns=0;
		List<CourseDetails> courses=cs.showAllCourses();
		for(CourseDetails c:courses) {
			branch.add(c.getCbranch());
			i++;
			columns++;
		}
		columns +=2;
		session.setAttribute("col", columns);	
		System.out.println(columns);
		List<String> em=cs.showAllEmails(branch);
		
		List<String> ls= cs.showAllApplyAdmission2(branch,columns);
		
		//in call
		for(int a=0;a<em.size();a++)
		{
			System.out.println(em.get(a));
		}
		//System.out.println();
		int listsize = ls.size();
		int k = listsize/columns;
		//List<ApplyCollege>  applyCollege = cs.showAllApplyAdmission();
		m.addAttribute("columns",columns);
		m.addAttribute("k",k);
		m.addAttribute("em",em);
		m.addAttribute("list",ls);
		m.addAttribute("branch",branch);
		
		return "ViewApplications";
	}

	
	
	@RequestMapping(value="/EducationDetails", method=RequestMethod.GET)
	public String Education() {
		
		return "EducationDetails";
	}
	
	
	
	@RequestMapping(value="/educationaldetailsprocess", method=RequestMethod.POST)
	public String educationalDetailsProcess(
			@RequestParam("emailid") String emailid,
			@RequestParam("board10") String boardName10,
    		@RequestParam("board12") String boardName12,@RequestParam("percentage10") int percentage10,
    		@RequestParam("percentage12") int percentage12,
    		/*@RequestParam("imagepic") MultipartFile imagepic,
    		@RequestParam("image10") MultipartFile image10,
    		@RequestParam("image12") MultipartFile image12
    		*/Model m) throws IOException {
		
		EducationalDetails ed =new EducationalDetails();
		ed.setEmailid(emailid);
		ed.setBoard10(boardName10);
		ed.setBoard12(boardName12);
		ed.setPercentage10(percentage10);
		ed.setPercentage12(percentage12);
		
		/*
		String imagepicname = ((MultipartFile) imagepic).getOriginalFilename();
		String image10name = ((MultipartFile) image10).getOriginalFilename();
		String image12name = ((MultipartFile) image12).getOriginalFilename();
		
		byte[] imagepicbytes = ((MultipartFile)imagepic).getBytes();
		byte[] image10bytes = ((MultipartFile)image10).getBytes();
		byte[] image12bytes = ((MultipartFile)image12).getBytes();
		
		File file1 = new File("D:/Project Stages/Pics/"+imagepicname);
		File file2 = new File("D:/Project Stages/Pics/"+image10name);
		File file3 = new File("D:/Project Stages/Pics/"+image12name);
		
		try
        {
        	FileOutputStream fos1 = new FileOutputStream(file1);
        	FileOutputStream fos2 = new FileOutputStream(file2);
        	FileOutputStream fos3 = new FileOutputStream(file3);
        	//System.out.println(fos);
        	
        	fos1.write(imagepicbytes);
        	fos2.write(image10bytes);
        	fos3.write(image12bytes);
        	
        	
        	fos1.close();
        	fos2.close();
        	fos3.close();
            //multipartFile.transferTo(imageFile);
        	
            File oldname1 = new File("D:/Project Stages/Pics/"+imagepicname);
            File oldname2 = new File("D:/Project Stages/Pics/"+image10name);
            File oldname3 = new File("D:/Project Stages/Pics/"+image12name);
            
            //System.out.println(path);
            //String a = title;
            
            
            //String b =a.substring(0,2);
            //System.out.println(b);
            //fileName=i+b+rss.getEmailid()+fileName;
            
            String fileName1= ed.getEmailid()+"pic"+imagepicname;
            String fileName2= ed.getEmailid()+"10"+image10name;
            String fileName3= ed.getEmailid()+"12"+image12name;
            
            ed.setImagepic(fileName1);
    		ed.setImage10(fileName2);
    		ed.setImage12(fileName3);
            
            //fileNames.add(fileName);
            
            File newname1 = new File("D:/Project Stages/Pics/"+fileName1);
            File newname2 = new File("D:/Project Stages/Pics/"+fileName2);
            File newname3 = new File("D:/Project Stages/Pics/"+fileName3);
            //System.out.println(s.getServletContext().getRealPath("/")+filepath+rss.getEmailid());
            
            //oldname.renameTo(newname);
            
            oldname1.renameTo(newname1);
            oldname2.renameTo(newname2);
            oldname3.renameTo(newname3);
            
            
          
            
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
         */ 
		String st = ss.EducationalDetailsImpl(ed);
		if(st.equals("success"))
		{
			System.out.println("success");
			m.addAttribute("added","<div class=\"alert alert-success\" role=\"alert\" style=\"text-align:center;\">Course Added Successfully!</div>");
			return "EducationDetails";
		}
		else {
			System.out.println("error updating");
			return "redirect:/errPage";
		}
	
	}
	
	
	@RequestMapping(value="/ViewAllReports", method=RequestMethod.GET)
	public String ViewAllReports(Model m) {
		List<Reportus>  reportus = cs.showAllReports();
		System.out.println(reportus.toString());
		m.addAttribute("list",reportus);
		return "ViewAllReports";
	}
	
	@RequestMapping(value="/delreport/{id}", method=RequestMethod.GET)
	public String delreport(@PathVariable int id) {
		String st = "";
		if(ss.deleteReport(id).equals("success"))
		{
			System.out.println("success2");
			st="redirect:/ViewAllReports";
		}
		else
			st="Awelcome";
		return st;
		
		
	}
	
	@RequestMapping(value="/coursedd" , method=RequestMethod.POST)
	public String coursedd(@RequestParam("coursedropdown") String drop,@RequestParam("emailid") String emailid) {
		System.out.println(drop);
		String st= cs.result(drop,emailid);
		if(st.equals("success"))
		{
			System.out.println("success");
			return "redirect:/adminHome";
		}
		else {
			System.out.println("fail");
			return "redirect:/errPage";
		}
	}
	
	@RequestMapping(value="/rejectappl" , method=RequestMethod.POST)
	public String rejectAppl(@RequestParam("emailid") String emailid) {
		
		String st= cs.rejectappl(emailid);
		if(st.equals("success"))
		{
			System.out.println("success");
			return "redirect:/adminHome";
		}
		else {
			System.out.println("fail");
			return "redirect:/errPage";
		}
	}

	@RequestMapping(value="/ViewResults" , method=RequestMethod.GET)
	public String viewResults(Model m)
	{
		List<ViewResults> vr = cs.showAllResults();
		System.out.println(vr.toString());
		m.addAttribute("vr",vr);
		return "ViewResults";
	}
	
	@RequestMapping(value="/resultForStudents" , method=RequestMethod.GET)
	public String resultForStudents()
	{
		
		return "ViewResultsForS";
	}
	
}
