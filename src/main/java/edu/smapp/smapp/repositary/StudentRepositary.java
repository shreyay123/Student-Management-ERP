package edu.smapp.smapp.repositary;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.smapp.smapp.model.Student;
@Repository
public interface StudentRepositary extends JpaRepository<Student,Integer>{

	List<Student> findAllByBatchNumber(String batchNumber);



}


