package com.sharayu.firstjpademo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sharayu.firstjpademo.entities.Employee;

@Repository
public interface EmpRepository extends JpaRepository<Employee, Integer> {

	Employee findByEmpno(int empno); 
	List<Employee> findByLocation(String location);
}
