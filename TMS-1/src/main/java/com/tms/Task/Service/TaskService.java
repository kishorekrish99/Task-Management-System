package com.tms.Task.Service;

import java.util.List;

import com.tms.Task.Entity.Tasks;


public interface TaskService {

	public List<Tasks> getAllTasks();

	public void createTask(Tasks task);

	public Tasks getTaskDetails(int id);

	public void saveTask(Tasks task);

	public void deleteTask(int id);

	public List<Tasks> getworkTasks();

	public List<Tasks> getpersonalTasks();

	public List<Tasks> getshoppingTasks();


}
