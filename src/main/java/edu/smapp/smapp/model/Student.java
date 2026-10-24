package edu.smapp.smapp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int studentId;

	public int getStudentId() {
	    return studentId;
	}

	public void setStudentId(int studentId) {
	    this.studentId = studentId;
	}
	public String getStudentFullName() {
		return studentFullName;
	}
	public void setStudentFullName(String studentFullName) {
		this.studentFullName = studentFullName;
	}
	public String getStudentEmail() {
		return studentEmail;
	}
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}
	public byte getStudentAge() {
		return studentAge;
	}
	public void setStudentAge(byte studentAge) {
		this.studentAge = studentAge;
	}
	public String getStudentCourse() {
		return studentCourse;
	}
	public void setStudentCourse(String studentCourse) {
		this.studentCourse = studentCourse;
	}
	public String getBatchNumber() {
		return batchNumber;
	}
	public void setBatchNumber(String batchNumber) {
		this.batchNumber = batchNumber;
	}
	public String getBatchMode() {
		return batchMode;
	}
	public void setBatchMode(String batchMode) {
		this.batchMode = batchMode;
	}
	public double getFeesPaid() {
		return feesPaid;
	}
	public void setFeesPaid(double feesPaid) {
		this.feesPaid = feesPaid;
	}

@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentFullName=" + studentFullName + ", studentEmail="
				+ studentEmail + ", studentAge=" + studentAge + ", studentCourse=" + studentCourse + ", batchNumber="
				+ batchNumber + ", batchMode=" + batchMode + ", feesPaid=" + feesPaid + ", username=" + username
				+ ", password=" + password + ", studentCollageName=" + studentCollageName + "]";
	}

private String studentFullName;
private String studentEmail;
private byte studentAge;
private String studentCourse;
private String batchNumber;
private String batchMode;
private double feesPaid;
private String username;
private String password;
private String studentCollageName;
public String getStudentCollageName() {
	return studentCollageName;
}
public void setStudentCollageName(String studentCollageName) {
	this.studentCollageName = studentCollageName;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
