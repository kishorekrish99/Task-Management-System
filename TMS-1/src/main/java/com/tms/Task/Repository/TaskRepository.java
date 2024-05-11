package com.tms.Task.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.tms.Task.Entity.Tasks;

@Repository
public interface TaskRepository extends JpaRepository<Tasks, Integer> {

	
	@Query("SELECT t FROM Tasks t WHERE t.type = 'Work'")
    List<Tasks> findAllWorkTasks();
	
	@Query("SELECT t FROM Tasks t WHERE t.type = 'Personal'")
    List<Tasks> findAllPersonalTasks();
	
	@Query("SELECT t FROM Tasks t WHERE t.type = 'Shopping'")
    List<Tasks> findAllShoppingTasks();
	
}
