package edu.smapp.smapp.servicei;
import java.util.List;

import edu.smapp.smapp.model.Student;

public interface StudentService {
public void saveStudentDetails(Student st);
public List<Student> getAllStudents();
public List<Student> searchStudentByBatch(String batchNumber);
public Student getSingleStudent(int id);
public void updateStudentfees(int studentId,double amount);
public void removeStudent( int studentId);
public void updateStudentBatch(int studentId, String batchNumber);
}
