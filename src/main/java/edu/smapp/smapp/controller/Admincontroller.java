package edu.smapp.smapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.smapp.smapp.model.Student;
import edu.smapp.smapp.servicei.StudentService;
//import edu.smapp.smapp.serviceimpl.RequsetParam;

@Controller
//@ComponentScan(basePackages= {"edu.smapp.smapp"})
public class Admincontroller {
	
	@Autowired
	StudentService ss;
	
	@RequestMapping("/")
	public String prelogin() {
		return "login";
	}
	
	@RequestMapping("/login")
	public String onlogin(@RequestParam("username") String username,@RequestParam("password") String password,Model m) {
		if(username.equals("ADMIN") && password.equals("ADMIN")){
			//List<Student> students = ss.getAllStudents();
			return "screenadmin";
		}else {
			m.addAttribute("msg", "invalid....");
			return "login";}
		}
	
	
	@RequestMapping("/enroll_student")
	public String saveStudentDetails(@ModelAttribute Student student,Model m) {
		ss.saveStudentDetails(student);
		List<Student> students=ss.getAllStudents();
		m.addAttribute("data", students);
		return "screenadmin";
		
	}
	
	@RequestMapping("/search")
	public String getBatchStudent(@RequestParam String batchNumber,Model m) {
		List<Student> result=ss.searchStudentByBatch(batchNumber);
		if(result.size()>0) {
			m.addAttribute("data", result);
		}else {
			List<Student> students=ss.getAllStudents();
			m.addAttribute("data", students);
			m.addAttribute("message", "no records are available");
		}
		return "screenadmin";
	}
	
	@RequestMapping("/fees")
	public String onfees(@RequestParam("studentId") int studentId,Model m) {
		Student st = ss.getSingleStudent(studentId);
		m.addAttribute("st", st);
		return "fees";
	}
	@RequestMapping("/payfees")
	public String payfees(@RequestParam("studentId") int studentId,@RequestParam("amount") double amount,Model m) {
		ss.updateStudentfees(studentId,amount);
		List<Student> students=ss.getAllStudents();
		m.addAttribute("data", students);
		return "screenadmin";
		}
	@RequestMapping("/remove")
	public String removeStudent(@RequestParam("studentId") int studentId,Model m) {
		ss.removeStudent(studentId);
		List<Student> students=ss.getAllStudents();
		m.addAttribute("data", students);
		return "screenadmin";
		
	}

	@RequestMapping("/editbatch")
	public String payfees(@RequestParam("studentId") int studentId,@RequestParam("batchNumber") String batchNumber,Model m) {
		ss.updateStudentBatch(studentId, batchNumber);
		List<Student> students=ss.getAllStudents();
		m.addAttribute("data", students);
		return "screenadmin";
		}
}



