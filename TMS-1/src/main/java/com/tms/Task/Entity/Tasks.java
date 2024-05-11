package com.tms.Task.Entity;

import java.sql.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;


@Entity
public class Tasks {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String title;
	private String description;
	private Date duedate;
	private String priority;
	private String Status;
	private String type;
	
	public Tasks() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDuedate() {
		return duedate;
	}

	public void setDuedate(Date duedate) {
		this.duedate = duedate;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Tasks [id=" + id + ", title=" + title + ", description=" + description + ", duedate=" + duedate
				+ ", priority=" + priority + ", Status=" + Status + ", type=" + type + "]";
	}

	public Tasks(int id, String title, String description, Date duedate, String priority, String status, String type) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.duedate = duedate;
		this.priority = priority;
		Status = status;
		this.type = type;
	}

	
	
	
	
	
}
