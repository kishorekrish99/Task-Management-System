package com.tms.Task.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tms.Task.Entity.Tasks;
import com.tms.Task.Repository.TaskRepository;

import jakarta.transaction.Transactional;

@Service
public class TaskServiceImpl implements TaskService {

	@Autowired
	private TaskRepository taskRepository;
	
	
	@Override
	@Transactional
	public List<Tasks> getAllTasks() {
		List<Tasks> tasks = taskRepository.findAll();
		return tasks;
	}


	@Override
	@Transactional
	public void createTask(Tasks task) {
		taskRepository.save(task);		
	}


	@Override
	public Tasks getTaskDetails(int id) {
		Optional<Tasks> result = taskRepository.findById(id);
		Tasks task=null;
		if(result.isPresent()) {
			task=result.get();
		}else {
			throw new RuntimeException("Task Not Found of given ID: "+id);
		}	
		return task;
	}


	@Override
	@Transactional
	public void saveTask(Tasks task) {
		taskRepository.save(task);
	}


	@Override
	@Transactional
	public void deleteTask(int id) {
		taskRepository.deleteById(id);
	}


	@Override
	@Transactional
	public List<Tasks> getworkTasks() {
		List<Tasks> tasks = taskRepository.findAllWorkTasks();
		return tasks;
	}


	@Override
	@Transactional
	public List<Tasks> getpersonalTasks() {
		List<Tasks> tasks = taskRepository.findAllPersonalTasks();
		return tasks;
	}


	@Override
	@Transactional
	public List<Tasks> getshoppingTasks() {
		List<Tasks> tasks = taskRepository.findAllShoppingTasks();
		return tasks;
	}


}