package com.tms.Task.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.tms.Task.Entity.Tasks;
import com.tms.Task.Service.TaskService;

@Controller
public class HomeController {

	@Autowired
	private TaskService taskservice;
	
	@GetMapping("/home")
	public String home(Model model) {
		List<Tasks> task = taskservice.getAllTasks();
		model.addAttribute("task", task);
		return "homepage";
	}
	
	@GetMapping("/createPage")
	public String createPage(Model model) {
		Tasks tasks = new Tasks();
		model.addAttribute("tasks",tasks);
		return "createtask";
	}
	
	@PostMapping("/createTask")
	public String createTask(@ModelAttribute Tasks task) {
		taskservice.createTask(task);
		return "redirect:/home";
	}
	
	@GetMapping("/edit/{id}")
	public String editTaskPage(@PathVariable("id") int id, Model model) {
		Tasks tasks = taskservice.getTaskDetails(id);
		model.addAttribute("tasks", tasks);
		return "edittask";
	}
	
	@PostMapping("/update/{id}")
	public String UpdateTask(@PathVariable("id") int id,Model model,@ModelAttribute("tasks") Tasks task) {
		task.setId(id);
		taskservice.saveTask(task);
		return "redirect:/home";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteUser(@PathVariable("id") int id, Model model) { 
	    taskservice.deleteTask(id);
	    return "redirect:/home";
	}
	
	@GetMapping("work")
	public String workTasks(Model model) {
		List<Tasks> task = taskservice.getworkTasks();
		
		System.out.println(task);
		model.addAttribute("task", task);
		return "workTask";
	}
	
	@GetMapping("personal")
	public String personalTasks(Model model) {
		List<Tasks> task = taskservice.getpersonalTasks();
		model.addAttribute("task", task);
		return "personalTask";
	}
	
	
	@GetMapping("shopping")
	public String shoppingTasks(Model model) {
		List<Tasks> task = taskservice.getshoppingTasks();
		model.addAttribute("task", task);
		return "shoppingTask";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
