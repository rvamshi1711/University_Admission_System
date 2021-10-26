package com.try1.service;

import java.util.List;

import com.try1.bean.CourseDetails;
import com.try1.bean.Reportus;



public interface CourseService {
	
	public String addCourse(String cbranch, String cseats, String cduration,String csems, String cdescription);
	public List<CourseDetails> showAllCourses();
	public CourseDetails update1(int cid);
	public String updateCourse(CourseDetails cd,String branch);
	public String insertBranchPref(String emailid,String marks12 );
	public String insertBranchPref2(String emailid,String branch, String pref);
	public List<Reportus> showAllReports();
}
