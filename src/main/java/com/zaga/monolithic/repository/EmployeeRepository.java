package com.zaga.monolithic.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.zaga.monolithic.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long>{

}